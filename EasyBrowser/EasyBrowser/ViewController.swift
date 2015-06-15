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
        // set this view to be the navigation view; entire view is this
        webView = WKWebView()
        webView.navigationDelegate = self
        self.view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "http://www.google.com")!
        webView.loadRequest(NSURLRequest(URL: url))
        webView.allowsBackForwardNavigationGestures = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

