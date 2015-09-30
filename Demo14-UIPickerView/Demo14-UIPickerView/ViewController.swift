//
//  ViewController.swift
//  Demo14-UIPickerView
//
//  Created by Prashant on 30/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    // color and size array
    var colorList: [String]!
    var sizeList: [String]!
    
    
    // outlet - color and size label
    @IBOutlet var colorLabel: UILabel!
    @IBOutlet var sizeLabel: UILabel!
    
    
    //outlet - picker view
    @IBOutlet var pickerView: UIPickerView!
    
    
    
    // MARK: - view functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set up data
        self.setupData()
        
        // set picker view delegate
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - picker view delegate and data source
    
    // how many component (i.e. column) to be displayed within picker view
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // How many rows are there is each component
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        if component == 0 {
            return  self.colorList.count
        }
        
        if component == 1  {
            return self.sizeList.count
        }
        
        return 0
    }
    
    // title/content for row in given component
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return self.colorList[row]
        }
        
        if component == 1 {
            return  self.sizeList[row]
        }
        
        return "Invalid Row"
    }
    
    // called when row selected from any component within a picker view
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            // if first row then set --
            if row == 0 {
                self.colorLabel.text = "--"
            }else{
                self.colorLabel.text = self.colorList[row]
            }
        }
        
        if component == 1 {
            // if first row then set --
            if row == 0 {
                self.sizeLabel.text = "--"
            }else {
                self.sizeLabel.text = self.sizeList[row]
            }
        }
    }
    
    
    
    // MARK: - Utility functions
    
    // function - create data
    private func setupData(){
        
        // create color list
        self.colorList = ["(( Select ))", "Black", "Blue", "Brown", "Green", "Orange", "Pink" , "Purple", "Red", "Yellow"]
    
        // create size list
        self.sizeList = ["(( Select ))","S", "M", "L", "XL" ]
    }
    
    
}

