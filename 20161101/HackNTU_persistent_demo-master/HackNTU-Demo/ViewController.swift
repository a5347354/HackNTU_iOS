//
//  ViewController.swift
//  HackNTU-Demo
//
//  Created by SEAN HD on 2016/10/31.
//  Copyright © 2016年 Appar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var readButton: UIButton!
    @IBOutlet weak var updateButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupButtons()
    }
    
    private func setupButtons() {
        self.createButton.addTarget(self, action: #selector(ViewController.createAction), for: UIControlEvents.touchUpInside)
        
        self.readButton.addTarget(self, action: #selector(ViewController.readAction), for: UIControlEvents.touchUpInside)
        
        self.updateButton.addTarget(self, action: #selector(ViewController.updateAction), for: .touchUpInside)
        
        self.deleteButton.addTarget(self, action: #selector(ViewController.deleteAction), for: .touchUpInside)
    }
    
    private func getText() -> String {
        return textView.text
    }
    
    private func getKey() -> String {
        return "textview.key"
    }
    
    func readAction() {
        print("Read")
        
        let textFromUD: String? = UDHelper.sharedInstance.getTextFromUserDefault(key: getKey())
        
        if textFromUD == nil {
            textView.text = "No data in userDefault"
        } else {
            textView.text = textFromUD
        }
        
    }
    
    func createAction() {
        print("Create")
        
        UDHelper.sharedInstance.saveTextIntoUserDefault(text: getText(), key: getKey())
    }
    
    func updateAction() {
        print("Update")
        
        UDHelper.sharedInstance.saveTextIntoUserDefault(text: getText(), key: getKey())
    }
    
    func deleteAction() {
        
        UDHelper.sharedInstance.saveTextIntoUserDefault(text: nil, key: getKey())
        
        print("Delete")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

