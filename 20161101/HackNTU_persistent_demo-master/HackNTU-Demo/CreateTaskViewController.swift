//
//  CreateTaskViewController.swift
//  HackNTU-Demo
//
//  Created by SEAN HD on 2016/11/1.
//  Copyright © 2016年 Appar. All rights reserved.
//

import UIKit
import RealmSwift

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var priorityTextField: UITextField!
    @IBOutlet weak var deadlineTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //Done按鈕
    @IBAction func doneAction(_ sender: UIButton) {
        
        // Create a task
//        let task = Task(value: ["name": taskNameTextField, "priority": Int(priorityTextField.text!)!])
        let task = Task()
        task.name = taskNameTextField.text!
        task.priority = Int(priorityTextField.text!)!
        
        let realm = try! Realm()
        try! realm.write {
            //新增資料
            realm.add(task)
        }
        
//        realm.write {
//            //可以在這做某一件事情
//        }
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
