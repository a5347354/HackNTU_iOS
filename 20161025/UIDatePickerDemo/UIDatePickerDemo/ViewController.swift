//
//  ViewController.swift
//  UIDatePickerDemo
//
//  Created by Fan on 2016/10/25.
//  Copyright © 2016年 Luke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextView: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 設定datePicker時間格式
        datePicker.datePickerMode = .dateAndTime
        
        //設定datePicker選取時間的間隔
        datePicker.minuteInterval = 15
        
        //預設datePicker的預設時間
        datePicker.date = Date()
        
        //初始化時間格式
        let formatter =  DateFormatter()
        
        //設定時間格式
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        //最早可以選取的時間
        let fromDateTime = formatter.date(from: "2000-01-01 00:00")
        datePicker.minimumDate = fromDateTime
        
        //最晚可以選取的時間
        let toDateTime = formatter.date(from: "2016-12-31 00:00")
        datePicker.minimumDate = toDateTime
        
        //設定語言
        datePicker.locale = Locale(identifier: "zh_TW")
        
        //設定datePicker改變後會觸發的function
        datePicker.addTarget(self, action: #selector(ViewController.changeTextField(datePick:)), for: .valueChanged)
    }
    
    func changeTextField(datePick: UIDatePicker){
        //初始化時間格式並確定格式
        let formatter = DateFormatter()
        formatter.dateFormat = " yyyy-MM-dd HH:mm"
        
        //設定DatePicker改變後，所會觸發的行為
        dateTextView.text = formatter.string(from: datePicker.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

