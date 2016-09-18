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
    @IBAction func spinButtonAction(_ sender: UIButton) {
        
        self.spinner1.startAnimating()
        self.spinner2.startAnimating()
        self.spinner3.startAnimating()
        self.spinner4.startAnimating()
        
        self.spinButton.isEnabled = false
        self.stopButton.isEnabled = true
        self.showHideButton.isEnabled = false
    }
    
    // action & outlet  - stop button
    @IBOutlet var stopButton: UIButton!
    @IBAction func stopButtonAction(_ sender: UIButton) {
        
        self.spinner1.stopAnimating()
        self.spinner2.stopAnimating()
        self.spinner3.stopAnimating()
        self.spinner4.stopAnimating()

        self.spinButton.isEnabled = true
        self.stopButton.isEnabled = false
        self.showHideButton.isEnabled = true
    }
    
    // action & outlet  - show/hide spinner button
    @IBOutlet var showHideButton: UIButton!
    @IBAction func showHideButtonAction(_ sender: UIButton) {
        
        if self.showHideButton.isSelected {
            
            self.showHideButton.isSelected = false
            
            self.spinner1.isHidden = false
            self.spinner2.isHidden = false
            self.spinner3.isHidden = false
            self.spinner4.isHidden = false

            self.spinButton.isEnabled = true
            self.stopButton.isEnabled = false
            
        }else{

            self.showHideButton.isSelected = true
            
            self.spinner1.isHidden = true
            self.spinner2.isHidden = true
            self.spinner3.isHidden = true
            self.spinner4.isHidden = true
            
            self.spinButton.isEnabled = false
            self.stopButton.isEnabled = false
        }
    }
    
    
    
    
    // MARK: - View function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // enable spin button
        self.spinButton.isEnabled = true

        // disable stop button
        self.stopButton.isEnabled = false
        
        // enable show/hide spinner button
        self.showHideButton.isEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

