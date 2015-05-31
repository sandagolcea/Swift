//
//  PhotosTableViewController.swift
//  PhotoViewer
//
//  Created by Sanda Golcea on 5/30/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {
    
    var photos = [Photo]()

    override func viewDidLoad() {
        super.viewDidLoad()
        var newPhoto = Photo(name: "Almond Toe Court Shoes", filename: "AlmondToeCourtShoes_thumb", notes: "Classic and elegant shoes fit for any occasion, in a black patent color")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Bird Print Dress", filename: "BirdPrintDress_thumb", notes: "The perfect dress for a romantic night out, for the nature lovers out there")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Cotton Shorts", filename: "CottonShorts_thumb", notes: "Perfect for those summer days and nights, in a wonderful bright red")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Gold Button Cardigan", filename: "GoldButtonCardigan_thumb", notes: "Timeless black cardigan, easy to match  with any outfit")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Fine Stripe Short Sleeve Shirt", filename: "FineStripeShortSleeveShirt_thumb", notes: "Casual and comfortable shirt, also available in other colors")
        photos.append(newPhoto)

    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("photoCell", forIndexPath: indexPath) as UITableViewCell
        
        var currentPhoto = photos[indexPath.row]
        cell.textLabel?.text = currentPhoto.name
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondScene = segue.destinationViewController as DisplayViewController
        
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }
    }
}
