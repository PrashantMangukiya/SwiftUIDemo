//
//  ViewController.swift
//  Demo31-UISwipeGesture
//
//  Created by Prashant on 14/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    
    // outlet - sample view
    @IBOutlet var sampleView: UIView!
    
    // create swipe gesture
    let swipeGestureLeft = UISwipeGestureRecognizer()
    let swipeGestureRight = UISwipeGestureRecognizer()
    let swipeGestureUp = UISwipeGestureRecognizer()
    let swipeGestureDown = UISwipeGestureRecognizer()
    
    
    
    // MARK: - view functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // set gesture delegate
        self.swipeGestureLeft.delegate = self
        self.swipeGestureRight.delegate = self
        self.swipeGestureUp.delegate = self
        self.swipeGestureDown.delegate = self
        
        // set gesture direction
        self.swipeGestureLeft.direction = UISwipeGestureRecognizerDirection.left
        self.swipeGestureRight.direction = UISwipeGestureRecognizerDirection.right
        self.swipeGestureUp.direction = UISwipeGestureRecognizerDirection.up
        self.swipeGestureDown.direction = UISwipeGestureRecognizerDirection.down
        
        // set gesture target
        self.swipeGestureLeft.addTarget(self, action: #selector(ViewController.handleSwipeLeft(_:)))
        self.swipeGestureRight.addTarget(self, action: #selector(ViewController.handleSwipeRight(_:)))
        self.swipeGestureUp.addTarget(self, action: #selector(ViewController.handleSwipeUp(_:)))
        self.swipeGestureDown.addTarget(self, action: #selector(ViewController.handleSwipeDown(_:)))
        
        // add gesture into view
        self.view.addGestureRecognizer(self.swipeGestureLeft)
        self.view.addGestureRecognizer(self.swipeGestureRight)
        self.view.addGestureRecognizer(self.swipeGestureUp)
        self.view.addGestureRecognizer(self.swipeGestureDown)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Utility functions
    
    // function - handle swift left
    func handleSwipeLeft (_ gesture: UISwipeGestureRecognizer) {
        
        let newPosition = CGRect(x: self.sampleView.frame.origin.x - 20.0 , y: self.sampleView.frame.origin.y, width: self.sampleView.frame.width, height: self.sampleView.frame.height)
        
        self.sampleView.frame = newPosition
    }

    // function - handle swift right
    func handleSwipeRight (_ gesture: UISwipeGestureRecognizer) {
        
        let newPosition = CGRect(x: self.sampleView.frame.origin.x + 20.0 , y: self.sampleView.frame.origin.y, width: self.sampleView.frame.width, height: self.sampleView.frame.height)
            
        self.sampleView.frame = newPosition
    }
    
    // function - handle swift Up
    func handleSwipeUp (_ gesture: UISwipeGestureRecognizer) {
        
        let newPosition = CGRect(x: self.sampleView.frame.origin.x, y: self.sampleView.frame.origin.y - 20.0, width: self.sampleView.frame.width, height: self.sampleView.frame.height)
            
        self.sampleView.frame = newPosition
    }
    
    // function - handle swift Down
    func handleSwipeDown (_ gesture: UISwipeGestureRecognizer) {
        
        let newPosition = CGRect(x: self.sampleView.frame.origin.x, y: self.sampleView.frame.origin.y + 20.0, width: self.sampleView.frame.width, height: self.sampleView.frame.height)
            
        self.sampleView.frame = newPosition
    }
    
}

