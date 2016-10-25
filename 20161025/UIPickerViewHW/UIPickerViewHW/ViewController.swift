//
//  ViewController.swift
//  UIPickerViewHW
//
//  Created by Fan on 2016/10/25.
//  Copyright © 2016年 Luke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var pickerViewObj: UIPickerView!
    
    let names = ["Luke", "Lucy"]
    let places = ["台北", "新竹","台中"]
    let actions = ["揮手"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerViewObj.dataSource = self
        pickerViewObj.delegate = self
        
//        self.textField.inputView = myPickerView
//        
//        let tap = UITapGestureRecognizer(target:self, action: #selector)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return names.count
        }else if component == 1{
            return places.count
        }else{
            return actions.count
        }
    }
    
    //顯示字串
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return names[row]
        }else if component == 1 {
            return places[row]
        }else{
            return actions[row]
        }
    }
    
    func tapToHideKeyboard(tapG: UITapGestureRecognizer){
    
    }
}

