// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var str1 = str
str += " !!!"
str
str1

// Int
let foo = 23
var bar: Double = 42
bar = bar/Double(foo)

// for in
for i in 1..<30 {
    i*i
}

// UIView
let view = UIView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
view.backgroundColor = UIColor.blue
view.layer.cornerRadius = 125.0
view.alpha = 0.5

// UILabel
let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
myLabel.backgroundColor = UIColor.red
myLabel.text = "Hello Swift"
myLabel.textAlignment = .center
myLabel.font = UIFont(name: "Georgia", size: 24)
myLabel

// UIImage
let url = URL(string: "http://images.apple.com/ios/ios-10/overview/ioslearnmore/icon_large_2x.jpg")
//轉二進制
let data = try? Data(contentsOf: url!)
//顯示
UIImage(data: data!)
