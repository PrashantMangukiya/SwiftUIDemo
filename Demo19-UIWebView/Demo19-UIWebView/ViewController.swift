//
//  ViewController.swift
//  Demo19-UIWebView
//
//  Created by Prashant on 04/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    // url to load
    let urlString : String = "http://www.prashantmangukiya.com"
    
    // outlet - webview
    @IBOutlet var myWebView: UIWebView!
    
    
    // outlet - activity indicator i.e. spinner
    @IBOutlet var mySpinner: UIActivityIndicatorView!
    
    // action - refresh button
    @IBAction func refreshButtonAction(sender: UIBarButtonItem) {
        self.mySpinner.startAnimating()
        self.myWebView.reload()
    }
    
    
    
    // MARK: -- View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // set webview delegate
        self.myWebView.delegate = self
        
        // fit content within screen size.
        self.myWebView.scalesPageToFit = true
        
        // start spinner
        self.mySpinner.startAnimating()
        
        // load url content within webview
        if let urlToBrowse = NSURL(string: self.urlString) {
            let urlRequest = NSURLRequest(URL: urlToBrowse)
            self.myWebView.loadRequest(urlRequest)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
        
    // MARK: - Web view delegate function
    
    func webViewDidFinishLoad(webView: UIWebView) {
        self.mySpinner.stopAnimating()
    }
    
    
}

