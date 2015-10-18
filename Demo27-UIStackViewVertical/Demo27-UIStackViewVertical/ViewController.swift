//
//  ViewController.swift
//  Demo27-UIStackViewVertical
//
//  Created by Prashant on 17/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // variable maintain how many images added to stack view
    var imageCount = 0
    
    // array stores image names
    var imageList: [String] = ["bg-1", "bg-2", "bg-3","bg-4","bg-5"]
    
    
    // outlet - stack view
    @IBOutlet var stackView: UIStackView!
    
    
    // outlet & action - add button
    @IBOutlet var addButton: UIBarButtonItem!
    @IBAction func addButtonClicked(sender: UIBarButtonItem) {

        // add image to stack view
        self.addImageToStackView()
    }
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // add image to stack view
        self.addImageToStackView()

        // add image to stack view
        self.addImageToStackView()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    // MARK: - Utility functions
    
    // function - It will add new image to stack view and disable add
    // button if five images added.
    private func addImageToStackView(){
        
        // find image name based on image index
        let imageName : String = self.imageList[self.imageCount]

        // create new image object
        let newImage: UIImage = UIImage(named: imageName)!
        
        // create new image view
        let newImageView = UIImageView(image: newImage)
        
        // set image view content mode
        newImageView.contentMode = UIViewContentMode.ScaleAspectFill
        
        // clip subview for image view
        newImageView.clipsToBounds = true
    
        // add image view into stack view
        self.stackView.addArrangedSubview(newImageView)
    
        // increase image index
        self.imageCount += 1
        
        // image image index go neyod 4 the disable add button
        if self.imageCount >= 5 {
            self.addButton.enabled = false
        }
        
    }
    
    
}

