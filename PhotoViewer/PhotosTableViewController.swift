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
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
