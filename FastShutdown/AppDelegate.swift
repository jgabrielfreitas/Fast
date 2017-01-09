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
    let statusItem   = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    let preferences  = Preferences()
    let scriptRunner = ScriptRunner()
    
    @IBOutlet weak var window: NSWindow!
    
    // open app preferences
    @IBAction func openPreferences(_ sender: NSMenuItem) {
        
        print("opening preferences...")
        preferences.showWindow(nil)
    }
    
    @IBAction func quitAllApps(_ sender: NSMenuItem) {
        
//        let killAllScript = "l"
    }
    
    @IBAction func shutdownClicked(_ sender: NSMenuItem) {
        
        let source = "tell application \"Finder\"\nshut down\nend tell"
        scriptRunner.run(source)
    }
    
    // kill application
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        
        NSApplication.shared().terminate(self)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.title = "Fast"
        statusItem.menu = statusMenu
    }


}

