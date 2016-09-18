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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.isSearching == true {
            return self.fruitListSearching.count
        }else {
            return self.fruitList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        if self.isSearching == true {
            cell.textLabel?.text = self.fruitListSearching[(indexPath as NSIndexPath).row]
        }else {
            cell.textLabel?.text = self.fruitList[(indexPath as NSIndexPath).row]
        }
        
        return cell
    }
    
    
    
    // MARK: - UISearchBar delegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if self.mySearchBar.text!.isEmpty {
            
            // set searching false
            self.isSearching = false
            
            // reload table view
            self.myTableView.reloadData()
        
        }else{
            
            // set searghing true
            self.isSearching = true
            
            // empty searching array
            self.fruitListSearching.removeAll(keepingCapacity: false)
            
            // find matching item and add it to the searcing array
            for i in 0..<self.fruitList.count {
            
                let listItem : String = self.fruitList[i]
                if listItem.lowercased().range(of: self.mySearchBar.text!.lowercased()) != nil {
                    self.fruitListSearching.append(listItem)
                }
            }
            
            self.myTableView.reloadData()
        }
        
    }
    
    // hide kwyboard when search button clicked
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.mySearchBar.resignFirstResponder()
    }
    
    // hide keyboard when cancel button clicked
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.mySearchBar.text = ""
        self.mySearchBar.resignFirstResponder()
        
        self.myTableView.reloadData()
    }
    
    
}

