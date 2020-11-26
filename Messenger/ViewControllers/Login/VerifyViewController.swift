//
//  VerifyViewController.swift
//  Messenger
//
//  Created by Mihael Isaev on 26.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

class VerifyViewController: ViewController {
//    override var statusBarStyle: StatusBarStyle { .dark }

    let phoneNumber: String

    init (phoneNumber: String) {
        self.phoneNumber = phoneNumber
        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @UState var code = ""
    
    lazy var codeField = UVerificationCodeView(6, $code)
    lazy var hud = UHUD()
    
    override func buildUI() {
        super.buildUI()
        background(.background)
        body {
            UVStack {
                UText(String.onboardingVerificationTitleDefaultFormat(phoneNumber))
                    .multiline()
                    .color(.black / .welcomeTitle)
                    .font(.helveticaNeueMedium, 26)
                    .alignment(.center)
                UButton.blueLink.title(String.onboardingVerificationBackLink).onTapGesture {
                    self.navigationController?.popViewController(animated: true)
                }
            }
            .alignment(.center)
            .edgesToSuperview(h: 16)
            .topToSuperview(24, safeArea: true)
            codeField
                .digitsMargin(16)
                .digitWidth(40)
                .digitColor(.black / .white)
                .digitBackground(.clear)
                .digitBorder(.bottom, 1, .white)
                .font(.helveticaNeueMedium, 36)
                .height(50)
                .centerXInSuperview()
                .centerYInSuperview(<=0)
                .tag(100)
                .entered(codeEntered)
            UButton.blue
                .title(String.buttonNext)
                .edgesToSuperview(h: 60)
                .top(to: 100, >=32)
                .bottomToSuperview($keyboardHeight.map { $0 > 0 ? -32 - $0 : -32 }, safeArea: true)
                .onTapGesture { [self] in
                    codeEntered(codeField.code)
                    ImpactFeedback.bzz(.light)
                }
            hud.contentViewColor(.clear).indicatorColor(.black / .white)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        codeField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        codeField.becomeFirstResponder()
    }
}

extension VerifyViewController {
    func codeEntered(_ code: String) {
        ImpactFeedback.bzz(.light)
        guard codeField.code.count == 6 else {
            codeField.shake()
            return
        }
        hud.mode(.activityIndicator).show()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.hud.hide(true)
            Session.isAuthorized = true
            App.mainScene.switch(to: .main, animation: .fade)
        }
    }
}

extension String {
    fileprivate static var title: String {
        String(.en("Verification code"), .ru("Код подтверждения"), .zh("驗證碼"))
    }
    fileprivate static var nextButtonTitle: String {
        String(.en("Continue"), .ru("Далее"), .zh("继续"))
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct VerifyViewController_Preview: PreviewProvider, DeclarativePreview {
    static var preview: Preview {
        Preview {
            VerifyViewController(phoneNumber: "+7 (900) 123-45-67")
        }
        .colorScheme(.dark)
        .device(.iPhoneX)
        .language(.en)
    }
}
#endif
