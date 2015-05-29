//
//  Note.swift
//  OneNote
//
//  Created by Sanda Golcea on 5/26/15.
//  Copyright (c) 2015 Sanda Golcea. All rights reserved.
//

import UIKit
//global variables:
var notesArray : [Note] = []
var currentNoteIndex : Int = -1
var noteTable : UITableView?

let allNotesKey = "notes"

class Note: NSObject {
    var date : String
    var note : String
    
    override init () {
        date = NSDate().description
        note = ""
    }
    
    func dictionary () -> NSDictionary {
        return ["note" : note, "date" : date]
    }
    
    class func saveNotes () {
        var dictionariesArray : [NSDictionary] = []
        // notesArray is loaded from the NSUserDefaults
        for var i = 0; i < notesArray.count; i++ {
            dictionariesArray.append(notesArray[i].dictionary())
        }
        // Saving data to user defaults
        NSUserDefaults.standardUserDefaults().setObject(dictionariesArray, forKey: allNotesKey)
    }
    
    class func loadNotes () {
        // retrieving the data from user defaults
        var defaults : NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var savedData : [NSDictionary]? = defaults.objectForKey(allNotesKey) as? [NSDictionary]
        
        if let data : [NSDictionary] = savedData {
            for var i = 0; i < data.count; i++ {
                var myNote : Note = Note()
                myNote.setValuesForKeysWithDictionary(data[i])
                notesArray.append(myNote)
            }
        }
    }
}
