//
//  ViewController.swift
//  Demo25-UISearchBar
//
//  Created by Prashant on 19/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    // outlet - search bar
    @IBOutlet var mySearchBar: UISearchBar!

    // outlet - table view
    @IBOutlet var myTableView: UITableView!
    
    // array of fruit list
    var fruitList: [String] = [String]()
    var fruitListSearching: [String] = [String]()
    
    // search in progress or not
    var isSearching : Bool = false
    
    
    
    //MARK: - view functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // fill up data
        self.fruitList  = [
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
            "Strawberry",
            "Watermelon"
        ]
        
        // set table view delegate
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        
        // set search bar delegate
        self.mySearchBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - table view data source and delegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.isSearching == true {
            return self.fruitListSearching.count
        }else {
            return self.fruitList.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
        if self.isSearching == true {
            cell.textLabel?.text = self.fruitListSearching[indexPath.row]
        }else {
            cell.textLabel?.text = self.fruitList[indexPath.row]
        }
        
        return cell
    }
    
    
    
    // MARK: - UISearchBar delegate
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        if self.mySearchBar.text!.isEmpty {
            
            // set searching false
            self.isSearching = false
            
            // reload table view
            self.myTableView.reloadData()
        
        }else{
            
            // set searghing true
            self.isSearching = true
            
            // empty searching array
            self.fruitListSearching.removeAll(keepCapacity: false)
            
            // find matching item and add it to the searcing array
            for i in 0..<self.fruitList.count {
            
                let listItem : String = self.fruitList[i]
                if listItem.lowercaseString.rangeOfString(self.mySearchBar.text!.lowercaseString) != nil {
                    self.fruitListSearching.append(listItem)
                }
            }
            
            self.myTableView.reloadData()
        }
        
    }
    
    // hide kwyboard when search button clicked
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        self.mySearchBar.resignFirstResponder()
    }
    
    // hide keyboard when cancel button clicked
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        self.mySearchBar.text = ""
        self.mySearchBar.resignFirstResponder()
        
        self.myTableView.reloadData()
    }
    
    
}

