//
//  Buttons.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

extension UButton {
    static var back: UButton {
        UButton()//.image("back")
    }
    static var blue: UButton {
        UButton()
            .background(.blueButton)
            .backgroundHighlighted(.blueButtonHighlighted)
            .height(48)
            .color(.blueButtonText)
            .font(.helveticaNeueMedium, 16)
            .corners(6)
    }
    static var blueLink: UButton {
        UButton()
            .height(48)
            .color(.blueButton)
            .color(.blueButtonHighlighted, .highlighted)
            .font(.helveticaNeueRegular, 14)
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct Buttons_Preview: PreviewProvider, DeclarativePreviewGroup {
    static var previewGroup: PreviewGroup {
        PreviewGroup {
            Preview {
                UButton.blueLink.title("Terms & Privacy Policy").edgesToSuperview(h: 8).centerYInSuperview()
            }
            .title("gray")
            .colorScheme(.dark)
            .layout(.fixed(width: 375, height: 60))
            Preview {
                UButton.blue.title("Continue").edgesToSuperview(h: 60).centerYInSuperview()
            }
            .title("github")
            .colorScheme(.light)
            .layout(.fixed(width: 375, height: 60))
        }
    }
}
#endif
