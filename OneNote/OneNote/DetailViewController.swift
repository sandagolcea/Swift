//
//  DetailViewController.swift
//  OneNote
//
//  Created by Sanda Golcea on 5/26/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var noteText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        noteText.text = notesArray[currentNoteIndex].note
        // this makes the keyboard show
        noteText.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        if (noteText.text == "") {
            notesArray.removeAtIndex(currentNoteIndex)
        } else {
            notesArray[currentNoteIndex].note = noteText.text
        }
        Note.saveNotes()
        noteTable?.reloadData()
    }

}

