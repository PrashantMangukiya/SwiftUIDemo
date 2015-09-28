//
//  ViewController.swift
//  Demo11-UIImageView
//
//  Created by Prashant on 28/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    // content mode list
    var contentModeList: [String]!
    
    // current content mode index
    var contentModeIndex : Int!

    
    // image list
    var imageList: [String]!

    // current image index
    var imageIndex: Int!
    
    
    
    // outlet - image view
    @IBOutlet var myImageView: UIImageView!
    
    // outlet - content mode label
    @IBOutlet var contentModeLabel: UILabel!
    
    
    // outlet & action - Prev button
    @IBOutlet var previousButton: UIBarButtonItem!
    @IBAction func previousButtonAction(sender: UIBarButtonItem) {
        
        // set prev content mode in the list
        if self.contentModeIndex >= 0 {
            self.contentModeIndex = self.contentModeIndex - 1
        }
        
        // set image content mode
        self.setImageContentMode()
    }
    
    
    // outlet & action - Next button
    @IBOutlet var nextButton: UIBarButtonItem!
    @IBAction func nextButtonAction(sender: UIBarButtonItem) {
        
        // set next content mode in the list
        if self.contentModeIndex < self.contentModeList.count {
            self.contentModeIndex = self.contentModeIndex + 1
        }
        
        // set image content mode
        self.setImageContentMode()
    }
    
    
    // outlet & action - swap image button
    @IBOutlet var swapButton: UIBarButtonItem!
    @IBAction func swapButtonAction(sender: UIBarButtonItem) {
        
        // swap image index
        if self.imageIndex == 0 {
            self.imageIndex = 1
        }else{
            self.imageIndex = 0
        }
        
        //set image
        self.setImage()
    }
    
    
    // outlet & action - reset button
    @IBOutlet var resetButton: UIBarButtonItem!
    @IBAction func resetButtonAction(sender: UIBarButtonItem) {
        
        // set default content mode index
        self.contentModeIndex  = 0

        // set default image index
        self.imageIndex = 0
    
        // set image
        self.setImage()
        
        // set image content mode
        self.setImageContentMode()
    }
    
    
    
    // MARK: - view functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // create sample data
        self.loadData()
        
        // set default content mode index
        self.contentModeIndex  = 0
        
        // set default image index
        self.imageIndex = 0
        
        // set image
        self.setImage()
        
        // set image content mode
        self.setImageContentMode()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK:  - utility function
    
    // create/load sample data
    private func loadData() {
    
        // initialise content mode list
        self.contentModeList = [
            "ScaleToFill",
            "ScaleAspectFit",
            "ScaleAspectFill",
            "Redraw",
            "Center",
            "Top",
            "Bottom",
            "Left",
            "Right",
            "TopLeft",
            "TopRight",
            "BottomLeft",
            "BottomRight"
        ]
        
        // initialise image list
        self.imageList = ["bg-1", "bg-2"]
    }
    
    // set image to image view
    private func setImage(){
        self.myImageView.image = UIImage(named: self.imageList[self.imageIndex])
    }
    
    // set imageView content mode
    private func setImageContentMode(){
        
        // set content mode
        self.myImageView.contentMode = UIViewContentMode.init(rawValue: self.contentModeIndex)!

        // set label for current content mode
        self.contentModeLabel.text = self.contentModeList[self.contentModeIndex]
        
        // enable/disable prev next button
        self.setButton()
    }
    
    // enable/disable prev next button
    private func setButton(){
        
        if self.contentModeIndex == 0 {
            self.previousButton.enabled = false
            self.nextButton.enabled = true
        }else if ( self.contentModeIndex == self.contentModeList.count - 1 ) {
            self.previousButton.enabled = true
            self.nextButton.enabled = false
        }else{
            self.previousButton.enabled = true
            self.nextButton.enabled = true
        }
        
    }
    

}

