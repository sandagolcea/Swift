//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Sanda Golcea on 6/15/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        self.view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://www.google.com")!
        webView.loadRequest(NSURLRequest(URL: url))
        webView.allowsBackForwardNavigationGestures = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .Plain, target: self, action: "openTapped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openTapped() {
        let alert = UIAlertController(title: "open page..", message: nil, preferredStyle: .ActionSheet)
        alert.addAction(UIAlertAction(title: "google.com", style: .Default, handler: openPage))
        alert.addAction(UIAlertAction(title: "apple.com", style: .Default, handler: openPage))
        alert.addAction(UIAlertAction(title: "cancel", style: .Cancel, handler: nil))
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func openPage(action: UIAlertAction!) {
        let url = NSURL(string: "http://" + action.title)!
        webView.loadRequest(NSURLRequest(URL: url))
    }

}

