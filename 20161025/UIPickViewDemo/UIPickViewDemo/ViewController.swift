//
//  ViewController.swift
//  UIPickViewDemo
//
//  Created by Fan on 2016/10/25.
//  Copyright © 2016年 Luke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //取得螢幕大小
        let fullScreen = UIScreen.main.bounds.size
        
        //建立PickerView定好他的位置跟尺寸
        let myPickerView = UIPickerView(frame: CGRect(x: 0, y: fullScreen.height * 0.3, width: fullScreen.width, height: 150))
        
        //新增剛加入的ViewController
        let myViewController = MyViewController()
        self.addChildViewController(myViewController)
        
        //將pickerView的所要做的部分，委託給MyViewControlller
        myPickerView.delegate = myViewController
        myPickerView.dataSource = myViewController
        
        
        //將pickerView加到主畫面
        self.view.addSubview(myPickerView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

