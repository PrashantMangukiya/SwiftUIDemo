//
//  ListTableViewController.swift
//  Demo37-GroupedTableView
//
//  Created by Prashant on 23/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    // array of fruit list
    var fruitList: [String] = Array()
    
    // array of fruit list that converted into Group (i.e. section)
    var fruitListGrouped = NSDictionary() as! [String : [String]]
    
    // array of section titles
    var sectionTitleList = [String]()
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create data for the list
        self.createData()
        
        // split data into section
        self.splitDataInToSection()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Table view data source
    
    // return the number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.fruitListGrouped.count
    }
    
    // return the number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // find section title
        let sectionTitle = self.sectionTitleList[section]
        
        // find fruit list for given section title
        let fruits = self.fruitListGrouped[sectionTitle]
        
        // return count for fruits
        return fruits!.count
    }
    
    // return cell for given row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // collect reusable cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // Configure the cell...
        
        // find section title
        let sectionTitle = self.sectionTitleList[(indexPath as NSIndexPath).section]
        
        // find fruit list for given section title
        let fruits = self.fruitListGrouped[sectionTitle]
        
        // find fruit name based on the row within section
        cell.textLabel?.text = fruits![(indexPath as NSIndexPath).row]
        
        // return cell
        return cell
    }
    
    // return section header title
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sectionTitleList[section]
    }
    
    
    // return title list for section index
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return self.sectionTitleList
    }
    // return section for given section index title
    override func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return index
    }
    
    
    
    // MARK: - Utility functions
    
    fileprivate func createData() {
        
        // fill up data
        self.fruitList  = [
            "Strawberry",
            "Apple", "Apricot", "Avocado",
            "Banana", "Blueberry",
            "Coconut", "Custard Apple",
            "Dates", "Durian",
            "Fig",
            "Gooseberry", "Grapes", "Guava",
            "Jackfruit",
            "Lemon", "Lime", "Longan", "Lychee",
            "Mango",
            "Orange",
            "Papaya", "Pear", "Pineapple", "Pomogranate",
            "Raspberry",
            "Watermelon"
        ]
        
        // sort the array  (Important)
        self.fruitList = self.fruitList.sorted()
    }
    
    
    fileprivate func splitDataInToSection() {
        
        // set section title "" at initial
        var sectionTitle: String = ""
        
        // iterate all records from array
        for i in 0..<self.fruitList.count {
            
            // get current record
            let currentRecord = self.fruitList[i]
            
            // find first character from current record
            let firstChar = currentRecord[currentRecord.startIndex]
            
            // convert first character into string
            let firstCharString = "\(firstChar)"
            
            // if first character not match with past section title then create new section
            if firstCharString != sectionTitle {
                
                // set new title for section
                sectionTitle = firstCharString
                
                // add new section having key as section title and value as empty array of string
                self.fruitListGrouped[sectionTitle] = [String]()
                
                // append title within section title list
                self.sectionTitleList.append(sectionTitle)
            }
            
            // add record to the section
            self.fruitListGrouped[firstCharString]?.append(currentRecord)
        }
        
    }
    
    
}
