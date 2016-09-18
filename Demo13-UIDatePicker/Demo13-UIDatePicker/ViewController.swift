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
    var dateFormatter: DateFormatter!
    
    // outlet - date label
    @IBOutlet var dateLabel: UILabel!
    
    
    // outlet & action - date picker
    @IBOutlet var datePicker: UIDatePicker!
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        // assign date to label when date picker value changed
        self.dateLabel.text = self.dateFormatter.string(from: sender.date)
    }
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set date formater for short date/time
        self.dateFormatter = DateFormatter()
        self.dateFormatter.dateStyle = DateFormatter.Style.long
        self.dateFormatter.timeStyle = DateFormatter.Style.short
        
        // assign date picker date value to label
        self.dateLabel.text = self.dateFormatter.string(from: self.datePicker.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

