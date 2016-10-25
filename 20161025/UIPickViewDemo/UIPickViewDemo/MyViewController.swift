//
//  MyViewController.swift
//  UIPickViewDemo
//
//  Created by Fan on 2016/10/25.
//  Copyright © 2016年 Luke. All rights reserved.
//

import UIKit

class MyViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    let week = ["星期一", "星期二", "星期三"]
    let meals = ["珍珠奶茶", "拿鐵"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //optional，有幾個欄位
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    //optional，每個欄位有幾個列
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0){
            return week.count
        }else{
            return meals.count
        }
    }
    
    //丟入字串
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
            return week[row]
        }else{
            return meals[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
