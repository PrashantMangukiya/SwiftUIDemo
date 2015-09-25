//
//  ViewController.swift
//  Demo2-UIButton
//
//  Created by Prashant on 25/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // number of click
    var clickCount: Int!
    
    // outlet - clickCount label
    @IBOutlet var clickCountLabel: UILabel!
    
    // outlet - button
    @IBOutlet var buttonClickMe: UIButton!
    
    // action - button
    @IBAction func buttonClickMeAction(sender: UIButton) {
        self.clickCount = self.clickCount + 1
        self.clickCountLabel.text = "\(self.clickCount)"
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set click count 0 at start
        self.clickCount = 0
        
        // set value for click count
        self.clickCountLabel.text = "\(self.clickCount)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

