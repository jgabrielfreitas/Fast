//
//  ScriptRunner.swift
//  Fast
//
//  Created by João Gabriel on 09/01/17.
//  Copyright © 2017 JGabrielFreitas. All rights reserved.
//

import Cocoa

class ScriptRunner: NSObject {
    
    func run(_ scriptToRun: String) {
        
        let script = NSAppleScript(source: scriptToRun)
        script?.executeAndReturnError(nil)
    }

}
