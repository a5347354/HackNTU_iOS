//
//  ViewController.swift
//  Fan_CoreLocation
//
//  Created by Fan on 2016/11/22.
//  Copyright © 2016年 Luke. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {

    let manager = CLLocationManager()
    
    @IBOutlet weak var startLabel: UILabel!
    
    
    
    var myLocations:[CLLocation] = []
    
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startLabel.text = "停止中"
        manager.requestWhenInUseAuthorization()
        //追蹤到使用者的位置
        myMap.userTrackingMode = .follow
        
        //一直追蹤座標
        manager.desiredAccuracy = kCLLocationAccuracyBest
        
        manager.delegate = self
        
        manager.startUpdatingLocation()
        
        myMap.delegate = self
//        manager.distanceFilter = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func pressStart(_ sender: AnyObject) {
        manager.startUpdatingLocation()
        startLabel.text = "記錄中"
    }
    
    
    @IBAction func pressStop(_ sender: AnyObject) {
        manager.stopUpdatingLocation()
    
        startLabel.text = "停止中"
    }

    
    
    func checkAuth(){
//        let status = CLLocationManager.authorizationStatus()
//        
//        if status == .denied {
//            
//            let alert = UIAlertController(title:"title", message: "plz allow :(",preferredStyle:.alert)
//            
//            alert.addAction(UIAlertAction(title: "OK", remove,style: .default, handler: {(UIAlertAction)in
//                
//                UIApplication.shared.open(URL(string: UIApplicationOpenSettingsURLString)!, options: )
//                
//                )}
//            
//            alert.addAction(UIAlertAction(title: "Cancel", style: remove, handler: .cancel,handler:{(UIAlertAction) in
//            
//            
//            })
//            
//            
//            UIApplication.shared.open(URL(string: UIApplicationOpenSettingsURLString)!, options: [:], completionHandler: nil)
//        }
    }
}


extension ViewController:CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print(locations.last!)
        myLocations.append(locations.last!)
        
        //點如果大於一個
        if myLocations.count > 1 {
            let startIndex = myLocations.count - 1
            let endIndex = myLocations.count - 2
            let area = [myLocations[startIndex].coordinate, myLocations[endIndex].coordinate]
            
            let polyline = MKPolyline(coordinates: area, count: area.count)
            
            myMap.add(polyline)
        }
        
        
    }
}

//在地圖上蓋上線（畫東西在地圖上）
extension ViewController:MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        
        let polylineRenderer = MKPolylineRenderer(overlay: overlay)
        polylineRenderer.lineWidth = 5
        polylineRenderer.strokeColor = .black
        return polylineRenderer
    }
}
