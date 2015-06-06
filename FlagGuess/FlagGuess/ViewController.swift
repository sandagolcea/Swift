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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        flag1.layer.borderWidth = 1
        flag2.layer.borderWidth = 1
        flag3.layer.borderWidth = 1
        flag1.layer.borderColor = UIColor.lightGrayColor().CGColor
        flag2.layer.borderColor = UIColor.lightGrayColor().CGColor
        flag3.layer.borderColor = UIColor.lightGrayColor().CGColor
        askQuestion()
    }

    func askQuestion() {
        countries.shuffle()
        flag1.setImage(UIImage(named: countries[0]), forState: .Normal)
        flag2.setImage(UIImage(named: countries[1]), forState: .Normal)
        flag3.setImage(UIImage(named: countries[2]), forState: .Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

