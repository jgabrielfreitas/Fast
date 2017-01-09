//
//  Preferences.swift
//  Fast
//
//  Created by João Gabriel on 09/01/17.
//  Copyright © 2017 JGabrielFreitas. All rights reserved.
//

import Cocoa

class Preferences: NSWindowController {
    
    convenience init() {
        self.init(windowNibName: "Preferences")
    }

    override func windowDidLoad() {
        super.windowDidLoad()

    }
        
    @IBAction func doneClicked(_ sender: NSButton) {
        print("helloooooo")
    }
}
