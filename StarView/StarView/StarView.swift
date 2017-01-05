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
    
    let starFrame: CGRect
    var starArray: [UILabel]
    
    init(stars: Int, width: CGFloat) {
        self.stars = stars
        self.height = width
        self.width = width * CGFloat(stars)

    }
}
