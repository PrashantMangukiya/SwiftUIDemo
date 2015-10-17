//
//  ViewController.swift
//  Demo34-UILongPressGesture
//
//  Created by Prashant on 16/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // create long press gesture
    let longPressGesture = UILongPressGestureRecognizer()
    
    // variable to track long press in progress or not
    var isLongPressInProgress: Bool = false
    
    
    
    // MARK: - View functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set long press duration
        self.longPressGesture.minimumPressDuration = 1.0
        
        // add target for long press
        self.longPressGesture.addTarget(self, action: "handleLongPress:")
        
        // add long press gesture in to view
        self.view.addGestureRecognizer(self.longPressGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // Mark: - Utility functions
    
    
    // if long press not in progress then create a circle view at the long press touch location.
    func handleLongPress(gesture: UILongPressGestureRecognizer) {
        
        // if long press in progress then return
        if self.isLongPressInProgress {
            return
        }
        
        // set long press in progress to true
        self.isLongPressInProgress = true
        
        // find touch/long press location
        let touchLocation = gesture.locationInView(self.view)
        
        // create frame having touched point as the center of frame
        let myFrame = CGRect(x: touchLocation.x - 25 , y: touchLocation.y - 25, width: 50, height: 50)
        
        // create custom view with given frame
        let customView = MyCustomView(frame: myFrame)
        
        // add custom view in to main view
        self.view.addSubview(customView)
    }
    
    // set long press in progress to false when touch begin
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.isLongPressInProgress = false
    }
    

}

