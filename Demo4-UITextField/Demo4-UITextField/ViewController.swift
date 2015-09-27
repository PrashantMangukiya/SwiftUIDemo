//
//  ViewController.swift
//  Demo4-UITextField
//
//  Created by Prashant on 26/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // outlet - fullname, email, password, and submit button
    @IBOutlet var fullName: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var submitButton: UIButton!
    
    // outlet - debug label
    @IBOutlet var debugLabel: UILabel!
    
    // action - submit button
    @IBAction func submitButtonAction(sender: UIButton) {
        
        // concate fullname, Email, Passord value from textField and show it to debug label.
        var debugMessage : String = ""
        debugMessage += "Name: " + self.fullName.text! + "\n"
        debugMessage += "E-mail: " + self.email.text! + "\n"
        debugMessage += "Password: " + self.password.text! + "\n"
        self.debugLabel.text = debugMessage
    }
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set text field delegate
        self.fullName.delegate = self
        self.email.delegate = self
        self.password.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    // MARK: - Text field delegate function
    
    // move cursor to next text field when clicked return button,
    // close the keboard when last text field done.
    func textFieldShouldReturn(textField: UITextField) -> Bool {

        // resign responder from given text field
        textField.resignFirstResponder()
        
        // set responder to next text field
        if textField == fullName {
            self.email.becomeFirstResponder()
        }else if textField == email {
            self.password.becomeFirstResponder()
        }
        
        return false
    }
    
    // close keyboard upon touching the view anywhere.
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        // end editing mode for the view
        self.view.endEditing(true)
    }
    
    
}

