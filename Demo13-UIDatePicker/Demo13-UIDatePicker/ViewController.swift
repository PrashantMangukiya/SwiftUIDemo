//
//  ViewController.swift
//  Demo13-UIDatePicker
//
//  Created by Prashant on 29/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // date formatter
    var dateFormatter: NSDateFormatter!
    
    // outlet - date label
    @IBOutlet var dateLabel: UILabel!
    
    
    // outlet & action - date picker
    @IBOutlet var datePicker: UIDatePicker!
    @IBAction func datePickerAction(sender: UIDatePicker) {
        // assign date to label when date picker value changed
        self.dateLabel.text = self.dateFormatter.stringFromDate(sender.date)
    }
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set date formater for short date/time
        self.dateFormatter = NSDateFormatter()
        self.dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        self.dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        // assign date picker date value to label
        self.dateLabel.text = self.dateFormatter.stringFromDate(self.datePicker.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

