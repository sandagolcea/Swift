//
//  TextViewController.swift
//  SimpleApp
//
//  Created by Sanda Golcea on 6/2/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    @IBAction func dismissTextViewController(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
