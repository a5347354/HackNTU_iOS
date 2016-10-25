//
//  ViewController.swift
//  UISliderDemo
//
//  Created by Fan on 2016/10/25.
//  Copyright © 2016年 Luke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    var defaultAlpha = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //預設imageView的alpha值
        self.imageView.alpha = CGFloat(defaultAlpha)
        
        //當拉slider時是否同步更新
        self.slider.isContinuous = true
        
        //增加觸及事件
        self.slider.addTarget(self, action: #selector(ViewController.changeImageAlpha(slider:)), for: .valueChanged)
    }

    func changeImageAlpha(slider:UISlider){
        self.imageView.alpha = CGFloat(slider.value)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

