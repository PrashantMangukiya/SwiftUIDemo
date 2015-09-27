//
//  ViewController.swift
//  Demo5-UITextView
//
//  Created by Prashant on 27/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    
    // outlet - text view
    @IBOutlet var myTextView: UITextView!
    
    //action - done button
    @IBAction func doneButtonAction(sender: UIButton) {
        self.myTextView.resignFirstResponder()
    }
    
    
    
    // MARK: - view function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // set delegate for text view
        self.myTextView.delegate = self
        
        // remove top offset within textView
        self.automaticallyAdjustsScrollViewInsets = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    // close keyboard when touch the view
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        // end editing mode for view
        self.view.endEditing(true)
    }
    
    
}

