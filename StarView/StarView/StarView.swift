//
//  StarView.swift
//  StarView
//
//  Created by Madhur Malhotra on 1/4/17.
//  Copyright © 2017 madhur.xyz. All rights reserved.
//

import UIKit
import Foundation

class StarView: UIView {
    
    let selectedStar = "\u{2605}"
    let unselectedStar = "\u{2606}"
    
    var xVal: CGFloat = 0
    var stars: Int
    var height: CGFloat
    var width: CGFloat
    
    
    let starFrame: CGRect
    var starArray: [UILabel]
    
    init(stars: Int, width: CGFloat) {
        self.stars = stars
        self.height = width
        self.width = width * CGFloat(stars)
        self.starFrame = CGRect(x: 10.0, y: 100.0, width: self.width, height: self.height)
        self.starArray = []
        
        super.init(frame: self.starFrame)
        backgroundColor = .white
        for _ in 0..<stars {
            let subViewSize = CGSize(width: self.starFrame.width/CGFloat(stars), height: self.starFrame.height)
            let subViewFrame = CGRect(x: xVal, y: 0.0, width: subViewSize.width, height: subViewSize.height)
            xVal += subViewSize.width
        }

    }
}
