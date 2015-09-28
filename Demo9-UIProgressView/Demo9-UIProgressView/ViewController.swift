//
//  ViewController.swift
//  Demo9-UIProgressView
//
//  Created by Prashant on 28/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    // timer - used to increment progress
    var myTimer: NSTimer?
    
    // outlet - progress view
    @IBOutlet var progressView1: UIProgressView!
    
    // outlet - progress label
    @IBOutlet var progressLabel: UILabel!
    
    // action & outlet: play button
    @IBOutlet var playButton: UIBarButtonItem!
    @IBAction func playButtonAction(sender: UIBarButtonItem) {
        
        // it progress reach 1 then reset it to 0.0
        if self.progressView1.progress >= 1 {
            self.progressView1.progress = 0.0
        }
        
        // schedule timer
        self.myTimer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("updateProgress"), userInfo: nil, repeats: true)
    
        // enable/disable button
        self.playButton.enabled = false
        self.resetButton.enabled = false
        self.pauseButton.enabled = true
    }
    
    // action & outlet: reset button
    @IBOutlet var resetButton: UIBarButtonItem!
    @IBAction func resetButtonAction(sender: UIBarButtonItem) {
        
        // reset progress view
        self.progressView1.progress = 0.0

        // reset progress value label
        self.progressLabel.text = "0"

        // enable/disable button
        self.playButton.enabled = true
        self.resetButton.enabled = true
        self.pauseButton.enabled = false
    }
    
    // action & outlet: pause button
    @IBOutlet var pauseButton: UIBarButtonItem!
    @IBAction func pauseButtonAction(sender: UIBarButtonItem) {

        // invalidate timer
        self.myTimer?.invalidate()

        // enable/disable button
        self.playButton.enabled = true
        self.resetButton.enabled = true
        self.pauseButton.enabled = false
    }
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // create timer
        self.myTimer = NSTimer()
        
        // set progress view default value and label
        self.progressView1.progress = 0.0
        let proressValue = Int(self.progressView1.progress * 100)

        // set progress value count
        self.progressLabel.text = "\(proressValue)"
        
        // enable play button
        self.playButton.enabled = true
        
        // enable reset button
        self.resetButton.enabled = false
        
        // disable pause button
        self.pauseButton.enabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - Utility function
    
    // update progress view
    func updateProgress() {
        
        // increase progress value
        self.progressView1.progress += 0.01

        // set label for progress value
        self.progressLabel.text = "\(Int(self.progressView1.progress * 100))"

        // invalidate timer if progress reach to 1
        if self.progressView1.progress >= 1 {
            
            // invalidate timer
            self.myTimer?.invalidate()
            
            // enable/disable button 
            self.playButton.enabled = true
            self.resetButton.enabled = true
            self.pauseButton.enabled = false
        }
        
    }
    
    
}

