//
//  ViewController.swift
//  Demo32-UIPanGesture
//
//  Created by Prashant on 15/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - Utility functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        
        // number of row and column to generae
        let row : Int = 3
        let col : Int = 5
        
        // start position for custom view
        let startX : Int = 20
        let startY : Int = 20
        
        // custom view width and height
        let width : Int = 50
        let height : Int = 50
        
        // generate custom view
        for i in 1...row {
            for j in 1...col {
                // create x, y postion for the view
                let offsetX = CGFloat( startX + (j * (width + 5)) - width )
                let offsetY = CGFloat( startY + (i * (height + 5)) )
                
                // create custom view
                let frame = CGRect(x: offsetX, y: offsetY, width: CGFloat(width), height: CGFloat(height))
                let view = MyCustomView(frame: frame)
                self.view.addSubview(view)
            }
        }
        
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

            
    
}

