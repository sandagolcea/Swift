//
//  DatePickerViewController.swift
//  SimpleApp
//
//  Created by Sanda Golcea on 6/1/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class DatePickerViewController : UIViewController {
    
    let countries = ["UK","France","USA","Canada","China", "Russia"]
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func dismissDatePickerView(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func displayDay(sender: AnyObject) {
        //grab date from datePicker; is NSDate obj
        var chosenDate = self.datePicker.date
        //create NSDateFormatter object
        let formatter = NSDateFormatter()
        //EEEE = day of month in full name e.g. Monday
        formatter.dateFormat = "EEEE"
        let day = formatter.stringFromDate(chosenDate)
        let result = "That day was a \(day)"
        
        //create alert controller
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        //add dismissal OK button
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        
        //show the alert
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return countries[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch countries[row] {
        case "USA", "Canada":
            self.view.backgroundColor = UIColor.yellowColor()
        case "Russia", "China":
            self.view.backgroundColor = UIColor.grayColor()
        case "UK", "France":
            self.view.backgroundColor = UIColor(red: 160/255, green: 255/255, blue: 170/255, alpha: 1)
        default:
            self.view.backgroundColor = UIColor.yellowColor()
        }
    }
}
