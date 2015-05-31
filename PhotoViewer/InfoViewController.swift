//
//  InfoViewController.swift
//  PhotoViewer
//
//  Created by Sanda Golcea on 5/30/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    var currentPhoto : Photo?

    @IBOutlet weak var detailsLabel: UILabel!

    @IBAction func dismissInfoView(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = currentPhoto!.notes
    }
}
