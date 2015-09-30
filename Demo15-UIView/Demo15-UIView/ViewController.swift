//
//  ViewController.swift
//  Demo15-UIView
//
//  Created by Prashant on 30/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // outlet - view
    @IBOutlet var myView: UIView!
    
    
    // outlet  - corder radious and border label
    @IBOutlet var corderRadiousLabel: UILabel!
    @IBOutlet var borderLabel: UILabel!
    
    
    // action - corder radious slider value changed
    @IBAction func cornerSliderAction(sender: UISlider) {
        
        // set corner radious from slider value
        self.myView.layer.cornerRadius = CGFloat(Int(sender.value))

        // set corner radious label
        self.corderRadiousLabel.text = "\(Int(sender.value))"
    }
    

    // action - border slider value changed
    @IBAction func borderSliderAction(sender: UISlider) {

        // set border width from slider value
        self.myView.layer.borderWidth = CGFloat(Int(sender.value))
        
        // set border label
        self.borderLabel.text = "\(Int(sender.value))"
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

