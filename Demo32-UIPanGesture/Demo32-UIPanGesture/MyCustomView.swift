//
//  MyCustomView.swift
//  Demo32-UIPanGesture
//
//  Created by Prashant on 15/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class MyCustomView: UIView {

    // last location for view
    var lastSavedLocation = CGPoint.zero
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // set corner radious and border thickness
        self.layer.cornerRadius = 12.5
        self.layer.borderWidth = 1.0
        
        // add pan gesture to view
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(MyCustomView.handlePanGesture(_:)))
        self.addGestureRecognizer(panGesture)
        
        // set view background color randomly
        let myRed = CGFloat( (arc4random_uniform(255) + 100 )  / 255 )
        let myGreen = CGFloat( (arc4random_uniform(255) + 100 ) / 255 )
        let myBlue = CGFloat( (arc4random_uniform(255) + 100 ) / 255 )
        self.backgroundColor = UIColor(red: myRed, green: myGreen, blue: myBlue, alpha: 1.0)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // MARK: - Utility functions
    
    func handlePanGesture(_ gesture: UIPanGestureRecognizer) {

        // find translation in main view
        let newTranslation = gesture.translation(in: self.superview)
        
        // set current object to new position
        self.center = CGPoint(x: self.lastSavedLocation.x + newTranslation.x , y: self.lastSavedLocation.y + newTranslation.y)
    }
    
    
    // detect touch for the current view and change last save postion
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // move touched view to front.
        self.superview?.bringSubview(toFront: self)
        
        // save view location
        self.lastSavedLocation = self.center
    }
    
    
}
