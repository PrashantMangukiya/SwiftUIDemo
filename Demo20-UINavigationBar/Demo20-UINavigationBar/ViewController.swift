//
//  ViewController.swift
//  Demo20-UINavigationBar
//
//  Created by Prashant on 05/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
            
    // action - help button clicked
    
    @IBAction func helpButtonAction(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("segueHelp", sender: self)
    }
    
    
    // action - settings button clicked
    @IBAction func settingsButtonAction(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("segueSettings", sender: self)
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
    
    
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        // set title for help screen
        if segue.identifier == "segueHelp" {
            let destVc = segue.destinationViewController as! HelpViewController
            destVc.navigationItem.title = "Help"
        }

        // set title for Settings screen
        if segue.identifier == "segueSettings" {
            let destVc = segue.destinationViewController as! SettingsViewController
            destVc.navigationItem.title = "Settings"
        }
        
    }
    
}

