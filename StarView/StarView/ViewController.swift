//
//  ViewController.swift
//  StarView
//
//  Created by Madhur Malhotra on 10/12/16.
//  Copyright © 2016 madhur.xyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var newStarView = StarView(stars: 5, width: 75.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(newStarView)
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

