//
//  Colors.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

extension UIColor {
    /// dynamic color (will be different in `light` and `dark` modes)
    static var background = 0xFEFFFE.color / .black
    static var blueButton = 0x2A69E9.color
    static var blueButtonHighlighted = 0x6B97F2.color
    static var blueButtonText = 0xEEF3FA.color
    static var welcomeTextFieldPlaceholder = 0x47474A.color
    static var welcomeTitle = 0xE9E9E9.color
    static var welcomeSubtitle = 0xB9B9B9.color
    static var navigationBarBackground = 0xFEFFFE.color / 0x0A0A0A.color
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct Colors_Preview: PreviewProvider, DeclarativePreviewGroup {
    static var previewGroup: PreviewGroup {
        PreviewGroup {
            Preview {
                UView().edgesToSuperview().background(.background)
            }
            .title("Background")
            .colorScheme(.dark)
            .layout(.fixed(width: 200, height: 50))
//            Preview {
//                UView().edgesToSuperview().background(.dynamicWhite)
//            }
//            .title("Dynamic White")
//            .colorScheme(.light)
//            .layout(.fixed(width: 200, height: 50))
//            Preview {
//                UView().edgesToSuperview().background(.red)
//            }
//            .title("Red")
//            .colorScheme(.light)
//            .layout(.fixed(width: 200, height: 50))
//            Preview {
//                UView().edgesToSuperview().background(.green)
//            }
//            .title("Green")
//            .colorScheme(.light)
//            .layout(.fixed(width: 200, height: 50))
//            Preview {
//                UView().edgesToSuperview().background(.blue)
//            }
//            .title("Blue")
//            .colorScheme(.light)
//            .layout(.fixed(width: 200, height: 50))
        }
    }
}
#endif
