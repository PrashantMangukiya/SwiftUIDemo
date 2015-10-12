//
//  ViewController.swift
//  Demo29-UIPinchGesture
//
//  Created by Prashant on 12/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    
    // blue color square view
    @IBOutlet var squareView: UIView!
    
    // pinch gesture object
    var pinchGesture = UIPinchGestureRecognizer()
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set pinch gesture delegate
        self.pinchGesture.delegate = self
        
        // set pinch gesture target
        self.pinchGesture = UIPinchGestureRecognizer(target: self, action: "pinchRecognized:")
        
        // add pinch gesture recognizer to view
        self.view.addGestureRecognizer(self.pinchGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - Utility functions
    
    func pinchRecognized(pinch: UIPinchGestureRecognizer) {
        
        // change view scale based on pinch
        self.squareView.transform = CGAffineTransformScale(self.squareView.transform, pinch.scale, pinch.scale)
        pinch.scale = 1.0
    }
    
}

