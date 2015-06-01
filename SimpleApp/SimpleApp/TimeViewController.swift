//
//  TimeViewController.swift
//  SimpleApp
//
//  Created by Sanda Golcea on 6/1/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController {
    
    @IBOutlet weak var timeTextField: UILabel!
    
    @IBAction func refreshTime(sender: AnyObject) {
        let currentTime = NSDate()
        
        var format = NSDateFormatter()
        format.dateFormat = "HH:mm a"
        timeTextField.text = format.stringFromDate(currentTime)
    }

    @IBAction func dismissTimeView(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
