//
//  WelcomePushViewController.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import Foundation
import UIKitPlus

final class WelcomePushViewController: ViewController {
    @UState var alpha: CGFloat = 0
    @UState var top: CGFloat = -53
    
    override func buildUI() {
        super.buildUI()
        background(.background)
        body {
            UVStack {
                UText(String.onboardingPermissionsTitle)
                    .color(.black / .welcomeTitle)
                    .font(.helveticaNeueMedium, 24)
                    .alignment(.center)
                UVSpace(16)
                UText(String.onboardingPermissionsExplanation)
                    .color(.black / .welcomeSubtitle)
                    .font(.helveticaNeueRegular, 14)
                    .alignment(.center)
                    .multiline()
            }
            .alignment(.center)
            .edgesToSuperview(h: 16)
            .topToSuperview(24, safeArea: true)
            
            UView {
                UView {
                    UHStack {
                        UHSpace(8)
                        UView {
                            UImage(.logo).edgesToSuperview(4).mode(.scaleAspectFit)
                        }
                        .size(38)
                        .corners(8)
                        .background(0x2C6EF3)
                        UHSpace(8)
                        UVStack {
                            UVSpace(2)
                            UText("John Smith".uppercased()).color(0x4A4A4A).font(.helveticaNeueRegular, 10)
                            UVSpace(4)
                            UText("👋🥳🥳").color(0x4A4A4A).font(.helveticaNeueRegular, 14)
                            USpace()
                        }
                        .alignment(.leading)
                        USpace()
                        UHSpace(8)
                    }
                    .edgesToSuperview(h:0, v: 10)
                }
                .widthToSuperview()
                .topToSuperview()
                .tag(100)
                .background(0xFEFFFE)
                .corners(8)
                .alpha($alpha)
                .shadow(.black, opacity: 0.1, x: 0, y: 4, radius: 10)
                UVStack {
                    UView {
                        UHStack {
                            UHSpace(8)
                            UView().size(38).corners(8).background(0xEFEFEF)
                            UHSpace(8)
                            UVStack {
                                UVSpace(4)
                                UView().size(48, 8).circle().background(0xF3F3F3)
                                UVSpace(6)
                                UView().size(160, 14).circle().background(0xF3F3F3)
                                USpace()
                            }
                            .alignment(.leading)
                            USpace()
                            UHSpace(8)
                        }
                        .edgesToSuperview(h:0, v: 10)
                    }
                    .corners(8)
                    .background(0xFEFFFE)
                    .shadow(.black, opacity: 0.1, x: 0, y: 4, radius: 10)
                    UVSpace(10)
                    UView {
                        UHStack {
                            UHSpace(8)
                            UView().size(38).corners(8).background(0xEFEFEF)
                            UHSpace(8)
                            UVStack {
                                UVSpace(4)
                                UView().size(48, 8).circle().background(0xF3F3F3)
                                UVSpace(6)
                                UView().size(160, 14).circle().background(0xF3F3F3)
                                USpace()
                            }
                            .alignment(.leading)
                            USpace()
                            UHSpace(8)
                        }
                        .edgesToSuperview(h:0, v: 10)
                    }
                    .corners(8)
                    .background(0xFEFFFE)
                    .shadow(.black, opacity: 0.1, x: 0, y: 4, radius: 10)
                }
                .top(to: 100, $top)
                .bottomToSuperview()
                .edgesToSuperview(h: 0)
            }
            .width(240)
            .centerXInSuperview()
            .centerYInSuperview(50)
            UButton.blue
                .title(String.onboardingPermissionEnablePermissionsButton)
                .edgesToSuperview(h: 60)
                .bottomToSuperview(-32, safeArea: true)
                .onTapGesture {
                    App.requestPushNotificationsAuthorization(.alert, .sound, .badge)
                }
            }
    }
    
    override func viewDidAppearFirstTime(_ animated: Bool) {
        super.viewDidAppearFirstTime(animated)
        UIView.animate(withDuration: 0.3, delay: 2, options: .curveLinear) {
            self.top = 10
        } completion: { _ in
            UIView.animate(withDuration: 0.3, delay: 0.5, options: .curveLinear) {
                self.alpha = 1
            } completion: { _ in }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        App.shared.$pushAuthorizationStatus.listen {
            Session.welcomeWasShown = true
            App.mainScene.switch(to: .login, animation: .fade)
        }
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct WelcomePushViewController_Preview: PreviewProvider, DeclarativePreview {
    static var preview: Preview {
        Preview {
            WelcomePushViewController()
        }
        .colorScheme(.dark)
        .device(.iPhoneX)
        .language(.en)
    }
}
#endif
