//
//  ViewController.swift
//  Demo16-UIContainerView
//
//  Created by Prashant on 01/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // action - segment control
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        
        // Show/Hide container view based on segment control
        if sender.selectedSegmentIndex == 0 {
            self.containerView1.isHidden = false
            self.containerView2.isHidden = true
            
        }else if sender.selectedSegmentIndex == 1 {
            self.containerView1.isHidden = true
            self.containerView2.isHidden = false
        }
    }
    
    
    // outlet - containerView1.  containerView2
    @IBOutlet var containerView1: UIView!
    @IBOutlet var containerView2: UIView!
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // show first container at load time
        self.containerView1.isHidden = false
        
        // hide second container at load time
        self.containerView2.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

