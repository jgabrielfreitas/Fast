//
//  AppDelegate.swift
//  FastShutdown
//
//  Created by João Gabriel on 08/01/17.
//  Copyright © 2017 JGabrielFreitas. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    @IBOutlet weak var window: NSWindow!
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        
        let source = "tell application \"Finder\"\nshut down\nend tell"
        let script = NSAppleScript(source: source)
        script?.executeAndReturnError(nil)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.title = "Fast"
        statusItem.menu = statusMenu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

