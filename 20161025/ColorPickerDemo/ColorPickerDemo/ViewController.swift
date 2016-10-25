//
//  ViewController.swift
//  ColorPickerDemo
//
//  Created by Fan on 2016/10/25.
//  Copyright © 2016年 Luke. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func changeColor(_ sender: AnyObject) {
        let color = UIColor(red: CGFloat(redSlider.value),
                            green:CGFloat(greenSlider.value),
                            blue:CGFloat(  blueSlider.value), alpha: 1)
        
        self.view.backgroundColor   = color
    }
    
    //原生的Facebook套件
    //分享按鈕
    @IBAction func shareBut(_ sender:AnyObject){
        //是否有登入
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook){
            let facebookComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            //起始Po文的值
            facebookComposeViewController?.setInitialText("我最喜歡的顏色是：Red:\(redSlider.value)、Green:\(greenSlider.value)、Blue:\(blueSlider.value)")
            if(facebookComposeViewController != nil){
                self.present(facebookComposeViewController!, animated:true, completion: nil)
            
            }
        }else{
            print("你沒有綁定facebook帳號")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

