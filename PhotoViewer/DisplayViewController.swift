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
        let image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextScene = segue.destinationViewController as InfoViewController
        nextScene.currentPhoto = currentPhoto
    }
}
