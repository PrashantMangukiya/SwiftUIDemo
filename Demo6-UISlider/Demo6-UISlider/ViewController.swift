//
//  ViewController.swift
//  Demo6-UISlider
//
//  Created by Prashant on 27/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // outlet & action - slider1
    @IBOutlet var mySlider1: UISlider!
    @IBAction func mySlider1Action(sender: UISlider) {
        self.myLabel1.text = "\(Int(sender.value))"
    }
    
    // outlet - label1
    @IBOutlet var myLabel1: UILabel!
    
    
    // outlet & action - slider2
    @IBOutlet var mySlider2: UISlider!
    @IBAction func mySlider2Action(sender: UISlider) {
        let currentValue = CGFloat(sender.value)
        self.myLabel2.font = UIFont(name: self.myLabel2.font.fontName, size: currentValue)
    }
    
    // outlet - label2
    @IBOutlet var myLabel2: UILabel!
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set value for label1
        self.myLabel1.text = "\(Int(mySlider1.value))"
        
        // set font size for label2
        let currentValue = CGFloat(self.mySlider2.value)
        self.myLabel2.font = UIFont(name: self.myLabel2.font.fontName, size: currentValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

