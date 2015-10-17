//
//  MyCustomView.swift
//  Demo34-UILongPressGesture
//
//  Created by Prashant on 16/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class MyCustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // set corner radious and border thickness
        self.layer.cornerRadius = self.layer.frame.width/2
        self.layer.borderWidth = 2.0
        
        
        // set view background color randomly
        let myRed = CGFloat( (arc4random_uniform(255) + 100 )  / 255 )
        let myGreen = CGFloat( (arc4random_uniform(255) + 100 ) / 255 )
        let myBlue = CGFloat( (arc4random_uniform(255) + 100 ) / 255 )
        self.backgroundColor = UIColor(red: myRed, green: myGreen, blue: myBlue, alpha: 1.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
