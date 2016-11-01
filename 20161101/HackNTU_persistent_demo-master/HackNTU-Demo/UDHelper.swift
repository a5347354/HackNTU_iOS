//
//  UDHelper.swift
//  HackNTU-Demo
//
//  Created by SEAN HD on 2016/11/1.
//  Copyright © 2016年 Appar. All rights reserved.
//

import UIKit
import Foundation

class UDHelper: NSObject {
    
    // static --> var can be used without instantiate an instance
    // let --> immutable
    static let sharedInstance = UDHelper()
 
    // 
    func userDefault() -> UserDefaults {
        let userDefaults = UserDefaults.standard
        return userDefaults
    }
 
    func saveTextIntoUserDefault(text: String?, key: String) {
        self.userDefault().setValue(text, forKey: key)
    }
    
    func getTextFromUserDefault(key: String) -> String? {
        return self.userDefault().object(forKey: key) as? String
    }
    
}
