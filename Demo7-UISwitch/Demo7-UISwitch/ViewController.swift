//
//  ViewController.swift
//  Demo7-UISwitch
//
//  Created by Prashant on 27/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // disaplay text
    var displayText: String = "Not Ready"
    
    // outlet - all
    @IBOutlet var readySwitch: UISwitch!
    @IBOutlet var sizeSwitch: UISwitch!
    @IBOutlet var colorSwitch: UILabel!
    @IBOutlet var bracketSwitch: UISwitch!
    @IBOutlet var displayLabel: UILabel!
    
    // action - ready switch toggle
    @IBAction func readySwitchAction(sender: UISwitch) {
        if sender.on {
            self.displayText = "Ready"
        }else{
            self.displayText = "Not Ready"
        }
        
        if self.bracketSwitch.on {
            self.displayLabel.text = "( " + self.displayText + " )"
        }else{
            self.displayLabel.text = self.displayText
        }
    }
    
    // action - size switch toggle
    @IBAction func sizeSwitchAction(sender: UISwitch) {
        if sender.on {
            self.displayLabel.font = UIFont(name: self.displayLabel.font.fontName, size: CGFloat(40))
        }else{
            self.displayLabel.font = UIFont(name: self.displayLabel.font.fontName, size: CGFloat(20))
        }
    }
    
    // action - color switch toggle
    @IBAction func colorSwitchAction(sender: UISwitch) {
        if sender.on {
            self.displayLabel.textColor = UIColor.redColor()
        }else{
            self.displayLabel.textColor = UIColor.blackColor()
        }
    }
    
    // action - bracket switch toggle
    @IBAction func bracketSwitchAction(sender: UISwitch) {
        if sender.on {
            self.displayLabel.text = "( " + self.displayText + " )"
        }else{
            self.displayLabel.text = self.displayText
        }
    }
    
    
    
        
    // MARK: - view functions
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

