//: Playground - noun: a place where people can play

import UIKit

let selectedStar = "\u{2605}"
let unselectedStar = "\u{2606}"

var stars = 10
var height: CGFloat = 25.0

var xVal: CGFloat = 0

let frame = CGRect(x: 0.0, y: 0.0, width: CGFloat(stars) * height, height: height)
let view = UIView(frame: frame)
view.backgroundColor = .white

for i in 0..<stars {
    let subViewSize = CGSize(width: view.frame.width/CGFloat(stars), height: view.frame.height)
    let subViewFrame = CGRect(x: xVal, y: 0.0, width: subViewSize.width, height: subViewSize.height)
    xVal += subViewSize.width
    let subViewLabel = UILabel(frame: subViewFrame)
    subViewLabel.textAlignment = .center
    subViewLabel.text = unselectedStar
}