//
//  ViewController.swift
//  Demo24-UIToolbar
//
//  Created by Prashant on 10/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // maintain state that toolbar is hiden or not.
    var toolbarHidden: Bool = false
    
    // outlet - toolbar
    @IBOutlet var toolbar: UIToolbar!
    
    // Action - toggle button
    @IBAction func toggleButtonAction(_ sender: UIButton) {
        
        
        // We are moving tool bar out of screen using animation.
        // i.e. we are changing the frame postion for the toolbar and change it's alpha.
        UIView.animate(withDuration: 1.0, animations: {
            () -> Void in
            
                // show/hide toolbar
                if self.toolbarHidden {
                    
                    self.toolbarHidden = false
                    let frameRect = CGRect(x: self.toolbar.frame.origin.x, y: self.toolbar.frame.origin.y - self.toolbar.frame.height , width: self.toolbar.frame.width , height: self.toolbar.frame.height)

                    self.toolbar.frame = frameRect
                    self.toolbar.alpha = 1.0
                    
                }else {

                    self.toolbarHidden = true
                    let frameRect = CGRect(x: self.toolbar.frame.origin.x   , y: self.toolbar.frame.origin.y + self.toolbar.frame.height, width: self.toolbar.frame.width , height: self.toolbar.frame.height)
            
                    self.toolbar.frame = frameRect
                    self.toolbar.alpha = 0
                }
            
            })
        
    }
    
    
    // outlet - debug label
    @IBOutlet var debugLabel: UILabel!
    
    // action - rewind button
    @IBAction func rewindButtonAction(_ sender: UIBarButtonItem) {
        self.debugLabel.text = "Rewind - Action"
    }

    // action - play button
    @IBAction func playButtonAction(_ sender: UIBarButtonItem) {
        self.debugLabel.text = "Play - Action"
    }
    
    // action - pause button
    @IBAction func pauseButtonAction(_ sender: UIBarButtonItem) {
        self.debugLabel.text = "Pause - Action"
    }
    
    // action - forward button
    @IBAction func forwardButtonAction(_ sender: UIBarButtonItem) {
        self.debugLabel.text = "Forward - Action"
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

