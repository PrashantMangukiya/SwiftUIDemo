//
//  ViewController.swift
//  Demo23-UICollectionView
//
//  Created by Prashant on 08/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    //  photo list - Image name
    var photoList = [ "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6" ]
    
    
    // corner radious for image/photo
    var photoCornerRadious : Int = 0
    
    
    // outlet - collection view
    @IBOutlet var photosCollectionView: UICollectionView!
    
    
    // action - radious change stepper
    @IBAction func radiousStepperAction(sender: UIStepper) {
        
        // set new radious
        self.photoCornerRadious = Int(sender.value)
        
        // reload collection view
        self.photosCollectionView.reloadData()
    }
    
    
    
    // MARK: - View functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // set collection view data source and delegate
        self.photosCollectionView.dataSource = self
        self.photosCollectionView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - collection view data source and delegate
    
    // number of sections within collection
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // number of items/records within section
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.photoList.count
    }
    
    // set cell content and return it
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // collect reusable cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("myCell", forIndexPath: indexPath) as! PhotoCollectionViewCell
        
        // set corner radious
        cell.setCornerRadious(photoCornerRadious)
        
        // set image within cell
        cell.photoImageView.image = UIImage(named: self.photoList[indexPath.row])
        
        // return cell
        return cell
    }
    
    
}

