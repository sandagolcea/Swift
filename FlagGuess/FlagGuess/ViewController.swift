//
//  ViewController.swift
//  FlagGuess
//
//  Created by Sanda Golcea on 6/5/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flag1: UIButton!
    @IBOutlet weak var flag2: UIButton!
    @IBOutlet weak var flag3: UIButton!

    var countries = [String]()
    var score = 0
    var correctAnswer = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        flag1.layer.borderWidth = 1
        flag2.layer.borderWidth = 1
        flag3.layer.borderWidth = 1
        flag1.layer.borderColor = UIColor.lightGrayColor().CGColor
        flag2.layer.borderColor = UIColor.lightGrayColor().CGColor
        flag3.layer.borderColor = UIColor.lightGrayColor().CGColor
        askQuestion()
    }

    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int(arc4random_uniform(3))
        title = countries[correctAnswer].uppercaseString
        flag1.setImage(UIImage(named: countries[0]), forState: .Normal)
        flag2.setImage(UIImage(named: countries[1]), forState: .Normal)
        flag3.setImage(UIImage(named: countries[2]), forState: .Normal)
    }

    @IBAction func buttonPressed(sender: UIButton) {
      var title : String
        if sender.tag == correctAnswer {
            title = "Correct"
            score++
        } else {
            title = "Wrong"
            score--
        }
        let alert = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "Continue", style: .Default, handler: askQuestion))
        presentViewController(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

