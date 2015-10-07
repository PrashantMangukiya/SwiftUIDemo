//
//  ViewController.swift
//  Demo22-UITableView
//
//  Created by Prashant on 07/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    // create item list array
    var fruits = [String]()
    var vegetables = [String]()
    var others  = [String]()
    
    
    // Outlet - tableview
    @IBOutlet var myTableView: UITableView!
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // set data within item list
        self.fruits = ["Apple", "Orange", "Pineapple", "Grapes", "Strawberry"]
        self.vegetables = ["Potato", "Cabbage", "Lettuce", "Tomato"]
        self.others = ["Bread", "Butter", "Paneer", "Cheese", "Milk", "Wheat Floor", "Multigrain Bread", "Custard Powder", "Spice", "Turmeric", "Clove" ]
        
        // set table view delegate and data source
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // Mark: - Table view data source and delegate
    
    // set number of sections within table view
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }

    // set number for rows for each setion
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return self.fruits.count
        }
        if section == 1 {
            return self.vegetables.count
        }
        if section == 2 {
            return self.others.count
        }
        
        return 0
    }
    
    // set header title for each section
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Fruits"
        }
        if section == 1 {
            return "Vegetables"
        }
        if section == 2 {
            return "Others"
        }
        
        return "Default Title"
    }
    
    // set cell content for each row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // deque reusable cell
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
        
        // set item title
        if indexPath.section == 0 {
            cell.textLabel?.text = self.fruits[indexPath.row]
        }
        
        if indexPath.section == 1 {
            cell.textLabel?.text = self.vegetables[indexPath.row]
        }

        if indexPath.section == 2 {
            cell.textLabel?.text = self.others[indexPath.row]
        }
        
        // return cell
        return cell
    }
    
    // go to details screen when clicked on a table row.
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("segueDetails", sender: self)
    }
    
    
    
    // MARK: - Navigation functiona
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
        
        if segue.identifier == "segueDetails" {
        
            // find indexpath for selected row
            let selectedIndexPath = self.myTableView.indexPathForSelectedRow

            // deselet row
            self.myTableView.deselectRowAtIndexPath(selectedIndexPath!, animated: true)
            
            // set title
            var selectedTitle = ""
            if selectedIndexPath!.section == 0 {
                selectedTitle = self.fruits[selectedIndexPath!.row]
            }else if selectedIndexPath!.section == 1 {
                selectedTitle = self.vegetables[selectedIndexPath!.row]
            }else if selectedIndexPath!.section == 2 {
                selectedTitle = self.others[selectedIndexPath!.row]
            }
            
            // create object for destination view controller
            let destVc = segue.destinationViewController  as! DetailsViewController
            
            // set value for selected item name within destination view controller
            destVc.selectedItemName = selectedTitle
        }
        
    }
    
    
}

