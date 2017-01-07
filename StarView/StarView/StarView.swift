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
            let subViewLabel = UILabel(frame: subViewFrame)
            subViewLabel.textAlignment = .center
            subViewLabel.text = unselectedStar
            self.starArray.append(subViewLabel)
        }
        for starLabel in self.starArray {
            addSubview(starLabel)
        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func updateSubView() {
        self.subviews.forEach( { $0.removeFromSuperview() } )
        for starLabel in self.starArray {
            addSubview(starLabel)
        }
    }
    
    func updateStarLabelText(starIndex: Int, newStar: String) {
        self.starArray[starIndex].text = newStar
        updateSubView()
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first?.location(in: self)
        let prevLocation = touches.first?.previousLocation(in: self)
        let direction = location!.x - prevLocation!.x

        if direction > 0 {
            let star = selectedStar
            switch Int(location!.x) {
            case Int.min..<75:
                updateStarLabelText(starIndex: 0, newStar: star)
            case 75..<150:
                updateStarLabelText(starIndex: 1, newStar: star)
            case 150..<225:
                updateStarLabelText(starIndex: 2, newStar: star)
            case 225..<300:
                updateStarLabelText(starIndex: 3, newStar: star)
            case 300..<Int.max:
                updateStarLabelText(starIndex: 4, newStar: star)
            default:
                break
            }
        } else if direction < 0 {
            let star = unselectedStar
            switch Int(location!.x) {
            case Int.min..<75:
                updateStarLabelText(starIndex: 0, newStar: star)
            case 75..<150:
                updateStarLabelText(starIndex: 1, newStar: star)
            case 150..<225:
                updateStarLabelText(starIndex: 2, newStar: star)
            case 225..<300:
                updateStarLabelText(starIndex: 3, newStar: star)
            case 300...Int.max:
                updateStarLabelText(starIndex: 4, newStar: star)
            default:
                break

            }
        }

    }

    
}
