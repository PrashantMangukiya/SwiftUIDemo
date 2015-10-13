//
//  ViewController.swift
//  Demo30-UIRotationGesture
//
//  Created by Prashant on 13/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    // outlet - sample view
    @IBOutlet var sampleView: UIView!
    
    // create rotation gesture recognizer
    let rotateGesture = UIRotationGestureRecognizer()
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // create rotation gesture recognizer
        self.rotateGesture.delegate = self
        
        // add rotate gesture target
        self.rotateGesture.addTarget(self, action: "rotateView:")
    
        // add rotate gesture within view
        self.view.addGestureRecognizer(rotateGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - Utility functions
    
    func rotateView(gesture: UIRotationGestureRecognizer) {
        
        self.sampleView.transform = CGAffineTransformRotate(self.sampleView.transform, gesture.rotation)
        
        gesture.rotation = 0
    }
    

}

