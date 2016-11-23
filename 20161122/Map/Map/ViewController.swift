//
//  ViewController.swift
//  Map
//
//  Created by Fan on 2016/11/22.
//  Copyright © 2016年 Luke. All rights reserved.
//

import UIKit
import MapKit

struct Location{
    let title:String
    let lat:Double
    let lon:Double
}

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    //
    let locations = [
        Location(title: "title", lat: 25.017972, lon: 121.536834),
        Location(title: "title2", lat: 25.027972, lon: 121.636834),
        Location(title: "title3", lat: 25.037972, lon: 121.736834)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addAnnotains()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addAnnotains(){
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.title = location.title
            annotation.coordinate = CLLocationCoordinate2DMake(location.lat, location.lon)
        
            myMap.addAnnotation(annotation)
        }
        
//        let annotations2 = locations.map { location -> MKPointAnnotation in
//            let annotation = MKPointAnnotation()
//            annotation.title = location.title
//            annotation.coordinate = CLLocationCoordinate2DMake(location.lat, location.lon)
//    
//            return annotation
//        }
//        myMap.addAnnotations(annotations2)
        
    }


}

