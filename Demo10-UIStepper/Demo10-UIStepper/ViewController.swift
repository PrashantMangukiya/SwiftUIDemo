//
//  ViewController.swift
//  Demo10-UIStepper
//
//  Created by Prashant on 28/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    // outlet - counter label
    @IBOutlet var counterLabel: UILabel!
    
    // outlet & action - stepper1
    @IBOutlet var stepper1: UIStepper!
    @IBAction func stepper1Action(sender: UIStepper) {
        self.counterLabel.text = "\(Int(sender.value))"
    }
    
    
    // outlet - message label
    @IBOutlet var messageLabel: UILabel!
    
    // outlet & action - stepper2
    @IBOutlet var stepper2: UIStepper!
    @IBAction func stepper2Action(sender: UIStepper) {
        self.messageLabel.font = UIFont(name: self.messageLabel.font.fontName, size: CGFloat(self.stepper2.value))
    }
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

