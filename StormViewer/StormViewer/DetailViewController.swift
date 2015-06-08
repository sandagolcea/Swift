//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Sanda Golcea on 6/3/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit
import Social

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: String = self.detailItem as? String {
            if let imageView = self.detailImageView {
                imageView.image = UIImage(named: detail)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        let basicShareButton = UIBarButtonItem(barButtonSystemItem: .Action, target: self, action: "shareTapped")
        let twitterShareButton = UIBarButtonItem(barButtonSystemItem: .Camera, target: self, action: "twitterShareTapped")
        navigationItem.rightBarButtonItems = [basicShareButton, twitterShareButton]
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    func shareTapped() {
        let control = UIActivityViewController(activityItems: [detailImageView.image!], applicationActivities: [])
        presentViewController(control, animated: true, completion: nil)
    }
    
    func twitterShareTapped() {
        let socialControl = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        socialControl.setInitialText("Great picture!")
        socialControl.addImage(detailImageView.image!)
        socialControl.addURL(NSURL(string: "http://www.photolib.noaa.gov/nssl"))
        presentViewController(socialControl, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

