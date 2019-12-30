//
//  ElementsIdentifier.swift
//  TBShortcut
//
//  Created by Paul Lereverend on 29/12/2019.
//  Copyright © 2019 Paul Lereverend. All rights reserved.
//

import AppKit

extension NSTouchBarItem.Identifier {
    static let infoLabelItem = NSTouchBarItem.Identifier("com.zeta.InfoLabel")
    static let joyEmojiItem = NSTouchBarItem.Identifier("com.zeta.JoyEmoji")
    static let sadEmojiItem = NSTouchBarItem.Identifier("com.zeta.SadEmoji")
    static let angryEmojiItem = NSTouchBarItem.Identifier("com.zeta.AngryEmoji")

}

extension NSTouchBar.CustomizationIdentifier {
    static let hyftBar = NSTouchBar.CustomizationIdentifier("fr.paullereverend.TBShortcuts")
}
