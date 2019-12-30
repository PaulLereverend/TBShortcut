//
//  TBController.swift
//  TBShortcut
//
//  Created by Paul Lereverend on 29/12/2019.
//  Copyright © 2019 Paul Lereverend. All rights reserved.
//

import Cocoa

class TBController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    override func makeTouchBar() -> NSTouchBar? {
        guard let viewController = contentViewController as? ViewController else {
            return nil
        }
        return viewController.makeTouchBar()
    }
    
}
