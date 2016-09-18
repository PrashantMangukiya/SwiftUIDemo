//
//  ViewController.swift
//  Demo18-UIAlertController
//
//  Created by Prashant on 03/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBAction func showAlertButtonAction(_ sender: UIButton) {
        self.showAlert()
    }
    
    
    @IBAction func showActionSheetAction(_ sender: UIButton) {
        self.showActionSheet()
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
    

    
    // MARK: - Utiliy functions
    
    
    // show alert
    fileprivate func showAlert(){
        
        // create controller with style as Alert
        let alertCtrl = UIAlertController(title: "Alert Demo", message: "Alert with Ok, Cancel button.", preferredStyle: UIAlertControllerStyle.alert )

        // create button action
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        
        // add action to controller
        alertCtrl.addAction(okAction)
        alertCtrl.addAction(cancelAction)
        
        // show alert
        self.present(alertCtrl, animated: true, completion: nil)
    }
    
    // show action sheet
    fileprivate func showActionSheet() {
        
        // create controller with style as ActionSheet
        let alertCtrl = UIAlertController(title: "Action Sheet Demo", message: "Action Sheet with Yes, No, Delete, Cancel.", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        // create button action
        let yesAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: nil)
        let noAction = UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: nil)
        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.destructive, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        
        // add action to controller
        alertCtrl.addAction(yesAction)
        alertCtrl.addAction(noAction)
        alertCtrl.addAction(deleteAction)
        alertCtrl.addAction(cancelAction)
        
        // show action sheet
        self.present(alertCtrl, animated: true, completion: nil)
    }
 
    
}





