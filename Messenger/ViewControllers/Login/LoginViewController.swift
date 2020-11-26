//
//  LoginViewController.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

class LoginViewController: ViewController {
    @UState var country = Countries.current
    @UState var phone = ""
    
    lazy var phoneField = UTextField.welcomePhone($country)
    lazy var hud = UHUD()
    
    override func buildUI() {
        super.buildUI()
        background(.background)
        body {
            UText(String.onboardingPhoneNumberTitle)
                .multiline()
                .color(.black / .welcomeTitle)
                .font(.helveticaNeueMedium, 26)
                .alignment(.center)
                .edgesToSuperview(h: 16)
                .topToSuperview(24, safeArea: true)
            UVStack {
                UView {
                    UHStack {
                        UText($country.map { $0.name.foreground(.black / .white).font(.helveticaNeueRegular, 16) })
                        UImage(.smallChevronRight).tint(0x848484)
                    }
                    .edgesToSuperview()
                }.onTapGesture { [self] in
                    present(CountriesViewController().onSelect { [self] in
                        country = $0
                        phone = ""
                    }, animated: true)
                }
                UVSpace(8)
                UVSpace(1).background(0x7F7F7F)
                UVSpace(16)
                UHStack {
                    UVStack {
                        UHStack {
                            UText(
                                $country.map {
                                    "+\($0.code)".foreground(.black / .white).font(.helveticaNeueRegular, 16)
                                }
                            )
                            UHSpace(8)
                        }
                        UVSpace(8)
                        UVSpace(1).background(0x7F7F7F)
                    }
                    UHSpace(8)
                    UVStack {
                        UHStack {
                            phoneField.text($phone)
                            USpace()
                        }
                        UVSpace(8)
                        UVSpace(1).background(0x7F7F7F)
                    }
                }
            }
            .edgesToSuperview(h: 16)
            .centerYInSuperview(<=0)
            .tag(100)
            UButton.blue
                .title(String.buttonNext)
                .edgesToSuperview(h: 60)
                .top(to: 100, >=32)
                .bottomToSuperview($keyboardHeight.map { $0 > 0 ? -32 - $0 : -32 }, safeArea: true)
                .onTapGesture(login)
            hud.contentViewColor(.clear).indicatorColor(.black / .white)
        }
    }
    
    func login() {
        guard phone.count > 5 else { // TODO: improve this check
            phoneField.shake()
            ImpactFeedback.error()
            return
        }
        let cleanPhone = phone
            .replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: "(", with: "")
            .replacingOccurrences(of: ")", with: "")
        let phone = "+\(country.code)\(cleanPhone)"
        ImpactFeedback.bzz(.light)
        hud.show(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let vc = VerifyViewController(phoneNumber: phone)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct LoginViewController_Preview: PreviewProvider, DeclarativePreview {
    static var preview: Preview {
        Preview {
            LoginViewController()
        }
        .colorScheme(.light)
        .device(.iPhoneX)
        .language(.en)
    }
}
#endif
