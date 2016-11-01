//
//  Task.swift
//  HackNTU-Demo
//
//  Created by SEAN HD on 2016/11/1.
//  Copyright © 2016年 Appar. All rights reserved.
//  查https://realm.io/docs/swift/latest/#models


import RealmSwift

class Task: Object {
    dynamic var name: String?
    dynamic var priority = 0
    dynamic var deadline: NSDate?
}
