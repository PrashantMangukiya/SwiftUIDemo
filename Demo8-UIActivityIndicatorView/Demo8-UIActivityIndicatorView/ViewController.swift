//
//  ViewController.swift
//  Demo8-UIActivityIndicatorView
//
//  Created by Prashant on 27/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    // outlet - all spinner
    @IBOutlet var spinner1: UIActivityIndicatorView!
    @IBOutlet var spinner2: UIActivityIndicatorView!
    @IBOutlet var spinner3: UIActivityIndicatorView!
    @IBOutlet var spinner4: UIActivityIndicatorView!
    
    // action & outlet  - spin button
    @IBOutlet var spinButton: UIButton!
    @IBAction func spinButtonAction(sender: UIButton) {
        
        self.spinner1.startAnimating()
        self.spinner2.startAnimating()
        self.spinner3.startAnimating()
        self.spinner4.startAnimating()
        
        self.spinButton.enabled = false
        self.stopButton.enabled = true
        self.showHideButton.enabled = false
    }
    
    // action & outlet  - stop button
    @IBOutlet var stopButton: UIButton!
    @IBAction func stopButtonAction(sender: UIButton) {
        
        self.spinner1.stopAnimating()
        self.spinner2.stopAnimating()
        self.spinner3.stopAnimating()
        self.spinner4.stopAnimating()

        self.spinButton.enabled = true
        self.stopButton.enabled = false
        self.showHideButton.enabled = true
    }
    
    // action & outlet  - show/hide spinner button
    @IBOutlet var showHideButton: UIButton!
    @IBAction func showHideButtonAction(sender: UIButton) {
        
        if self.showHideButton.selected {
            
            self.showHideButton.selected = false
            
            self.spinner1.hidden = false
            self.spinner2.hidden = false
            self.spinner3.hidden = false
            self.spinner4.hidden = false

            self.spinButton.enabled = true
            self.stopButton.enabled = false
            
        }else{

            self.showHideButton.selected = true
            
            self.spinner1.hidden = true
            self.spinner2.hidden = true
            self.spinner3.hidden = true
            self.spinner4.hidden = true
            
            self.spinButton.enabled = false
            self.stopButton.enabled = false
        }
    }
    
    
    
    
    // MARK: - View function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // enable spin button
        self.spinButton.enabled = true

        // disable stop button
        self.stopButton.enabled = false
        
        // enable show/hide spinner button
        self.showHideButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

