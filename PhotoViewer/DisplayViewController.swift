//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by Sanda Golcea on 5/30/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var currentPhoto : Photo?
    
    @IBOutlet weak var currentImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
