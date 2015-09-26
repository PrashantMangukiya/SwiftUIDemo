//
//  ViewController.swift
//  Demo3-UISegmentedControl
//
//  Created by Prashant on 25/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // array - priority list
    var priorityList: [String] = ["Low", "Medium", "High"]
    
    // outlet - priority segmented control
    @IBOutlet var prioritySegControl: UISegmentedControl!
    
    // action - priority segmented changed
    @IBAction func prioritySegControlValueChanged(sender: UISegmentedControl) {
        // set label for selected priority
        self.priorityLabel.text  = self.priorityList[self.prioritySegControl.selectedSegmentIndex]
    }
    
    // outlet - priority label
    @IBOutlet var priorityLabel: UILabel!
    
    
    
    // array - gender list
    var genderList: [String] = ["Male", "Female"]

    // outlet - gender image view
    @IBOutlet var genderImageView: UIImageView!
    
    // outlet - gender segmented control
    @IBOutlet var genderSegControl: UISegmentedControl!
    
    // action - geneder segment changed
    @IBAction func genderSegControlValueChanged(sender: UISegmentedControl) {
        // set image and label for selected gender
        let genderName: String = self.genderList[self.genderSegControl.selectedSegmentIndex]
        self.genderImageView.image = UIImage(named: genderName)
        self.genderLabel.text = genderName
    }
    
    // outlet - gender label
    @IBOutlet var genderLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // set default label for priority
        self.priorityLabel.text  = self.priorityList[self.prioritySegControl.selectedSegmentIndex]
    
        // set default image and label for gender
        let genderName: String = self.genderList[self.genderSegControl.selectedSegmentIndex]
        self.genderImageView.image = UIImage(named: genderName)
        self.genderLabel.text = genderName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

