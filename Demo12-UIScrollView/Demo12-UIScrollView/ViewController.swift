//
//  ViewController.swift
//  Demo12-UIScrollView
//
//  Created by Prashant on 28/09/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    
    // outlet - scroll view
    @IBOutlet var myScrollView: UIScrollView!
    
    // image view
    var myImageView: UIImageView!
    
    
    
    // MARK: - view functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        // remove top padding from scroll view
        // view controller will put top padding within scroll view automatically.
        // by setting this property to false will remove that top padding.
        self.automaticallyAdjustsScrollViewInsets = false
        
        // set scroll view delegate (used for zoom)
        self.myScrollView.delegate = self
                
        // create image
        self.myImageView = UIImageView(image: UIImage(named: "bg"))
    }

    // must written within view did appear, so it will have proper width and height available.
    override func viewDidAppear(animated: Bool) {
        
        // set scroll view content size same as image size
        self.myScrollView.contentSize = self.myImageView.bounds.size
        
        // auto resize sub view
        self.myScrollView.autoresizesSubviews = true
        
        // set content at (top,let) within scroll view
        self.myScrollView.contentOffset = CGPointZero
        
        // set scroll view bg color
        self.myScrollView.backgroundColor = UIColor.darkGrayColor()
        
         // add imageview within scroll view
        self.myScrollView.addSubview(self.myImageView)
    }
    
    // reset scale when layout changed
    override func viewWillLayoutSubviews() {
        
        // set scroll view min, max and current zoom scale
        let currentZoomScale = self.myScrollView.bounds.height/self.myImageView.bounds.size.height
        self.myScrollView.minimumZoomScale =  currentZoomScale / 2
        self.myScrollView.maximumZoomScale = 1.0
        self.myScrollView.zoomScale = currentZoomScale
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - scroll view delegate
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.myImageView
    }
    
}

