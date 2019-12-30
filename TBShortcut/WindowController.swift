/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Main window controller for this sample.
*/

import Cocoa

@available(OSX 10.12.2, *)
class WindowController: NSWindowController {
    
    let popoverBar = NSTouchBar.CustomizationIdentifier("com.TouchBarCatalog.popoverBar")
    let popover = NSTouchBarItem.Identifier("com.TouchBarCatalog.TouchBarItem.popover")
    
    var label = NSTouchBarItem.Identifier("com.TouchBarCatalog.TouchBarItem.label")
    let backgroundWindowIdentifier = "BackgroundWindow"
    
    var backgroundWindowController: NSWindowController!
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    // MARK: - NSTouchBarProvider
    
    @available(OSX 10.12.2, *)
    override func makeTouchBar() -> NSTouchBar? {
        let touchBar = NSTouchBar()
        touchBar.delegate = self

        touchBar.customizationIdentifier = popoverBar
        touchBar.defaultItemIdentifiers = [popover]
        touchBar.customizationAllowedItemIdentifiers = [popover, label]
        
        
        return touchBar
    }
    @IBAction func buttonPressed(_ sender: NSButton) {
        print("ss")
    }
    
}

// MARK: - NSTouchBarDelegate

@available(OSX 10.12.2, *)
extension WindowController: NSTouchBarDelegate {
    
    // This gets called while the NSTouchBar is being constructed, for each NSTouchBarItem to be created.
    func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItem.Identifier) -> NSTouchBarItem? {
        let custom = NSCustomTouchBarItem(identifier: identifier)

        switch identifier {
        case popover:
            let label = NSTextField.init(labelWithString: NSLocalizedString("Slt", comment:""))
            custom.view = label
            custom.customizationLabel = "ss"
        case label:
            custom.view = NSButton(title: NSLocalizedString("😂", comment:""), target: self, action: #selector(buttonPressed(_:)))

        default:
            return nil
        }
        return custom
    }
}

