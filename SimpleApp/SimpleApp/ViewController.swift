//
//  ViewController.swift
//  SimpleApp
//
//  Created by Sanda Golcea on 6/1/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var simpleTextField: UITextField!
    @IBOutlet weak var simpleLabel: UILabel!

    @IBAction func changeOtherText(sender: AnyObject) {
        simpleLabel.text = "Another text."
        self.simpleTextField.resignFirstResponder()
    }

    @IBAction func changeLabel(sender: AnyObject) {
        simpleLabel.text = "Hello " + simpleTextField.text + "."
        self.simpleTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

