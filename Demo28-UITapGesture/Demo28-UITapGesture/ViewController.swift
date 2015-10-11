//
//  ViewController.swift
//  Demo28-UITapGesture
//
//  Created by Prashant on 11/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    // Initiate tap geture recognizer object
    let tapGesture : UITapGestureRecognizer = UITapGestureRecognizer()
    
    // outlet - tap count label
    @IBOutlet var tapCountLabel: UILabel!
    
    
    // set tap count default value
    var tapCount: Int = 0
    
    
    // MARK: - View functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // set tap gesture recognizer delegte
        self.tapGesture.delegate = self
        
        // set tap gesture target 
        self.tapGesture.addTarget(self, action: "increaseCount")
    
        // add tap gesture recognizer into view
        self.view.addGestureRecognizer(self.tapGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Utility functions
    
    // function - increase count when screen tapped.
    func increaseCount(){
        self.tapCount = self.tapCount + 1
        self.tapCountLabel.text = "\(self.tapCount)"
    }
    
    
}

