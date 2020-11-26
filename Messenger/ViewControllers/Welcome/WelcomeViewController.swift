//
//  WelcomeViewController.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

final class WelcomeViewController: ViewController {
//    override var statusBarStyle: StatusBarStyle { .dark }

    override func buildUI() {
        super.buildUI()
        background(.background)
        body {
            UVStack {
                UImage(.onboardingSplashHero).mode(.scaleAspectFit).width(200).height(<=300)
                UVSpace(8)
                UText(String.onboardingSplashTitle)
                    .color(.black / .white)
                    .font(.helveticaNeueMedium, 26)
                    .multiline()
                    .alignment(.center)
            }
            .alignment(.center)
            .edgesToSuperview(h: 32)
            .topToSuperview(32, safeArea: true)
            UVStack {
                UButton.blueLink.title(String.onboardingSplashTermsAndPrivacyPolicy)
                UVSpace(8)
                UButton.blue
                    .title(String.buttonContinue)
                    .onTapGesture {
                        self.navigationController?.pushViewController(WelcomePushViewController(), animated: true)
                    }
            }
            .edgesToSuperview(h: 60)
            .bottomToSuperview(-32, safeArea: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct WelcomeViewController_Preview: PreviewProvider, DeclarativePreview {
    static var preview: Preview {
        Preview {
            WelcomeViewController()
        }
        .colorScheme(.dark)
        .device(.iPhoneX)
        .language(.en)
    }
}
#endif
