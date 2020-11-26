//
//  SettingsViewController.swift
//  Messenger
//
//  Created by Mihael Isaev on 26.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

class SettingsViewController: ViewController {
    override func buildUI() {
        super.buildUI()
        background(.white / .black)
        body {
            UView{
                UView {
                    UImage(.composeCancel)
                        .mode(.scaleAspectFit)
                        .tint(.black / .white)
                        .size(24)
                        .centerInSuperview()
                }
                .size(32)
                .circle()
                .edgesToSuperview(leading: 16, bottom: -12)
                .onTapGesture {
                    ImpactFeedback.selected()
                    self.dismiss(animated: true)
                }
                UText(String.settingsNavBarTitle)
                    .color(.black / .white)
                    .font(.helveticaNeueMedium, 16)
                    .centerXInSuperview()
                    .bottomToSuperview(-16)
            }
            .background(.navigationBarBackground)
            .edgesToSuperview(top: 0, leading: 0, trailing: 0)
            .height(80 + App.current.safeInsets.top)
            .tag(100)
            UVScrollStack {
                UVSpace(16)
                UHStack {
                    UHSpace(16)
                    UView {
                        UText("J".uppercased())
                            .color(.white)
                            .font(.helveticaNeueMedium, 22)
                            .alignment(.center)
                            .edgesToSuperview()
                        UView {
                            UImage(.cameraOutline32)
                                .mode(.scaleAspectFit)
                                .tint(.black / .white)
                                .edgesToSuperview(4)
                        }
                        .background(.white / .black)
                        .size(30)
                        .circle()
                        .edgesToSuperview(trailing: 0, bottom: 0)
                        //.centerXInSuperview(-10, side: .trailing)
                    }
                    .background(0x52535C)
                    .size(56)
                    .circle()
                    UHSpace(16)
                    UVStack {
                        UText("John").color(.black / .white).font(.helveticaNeueMedium, 18)
                        UVSpace(4)
                        UText("+7 (900) 123-45-67").color(0xB9B9B9).font(.helveticaNeueRegular, 14)
                    }
                    USpace()
                    UHSpace(16)
                    UImage(.smallChevronRight).size(28).mode(.scaleAspectFit).tint(.white)
                    UHSpace(16)
                }
                .alignment(.center)
                .onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsInviteTitle).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsInviteTitle).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsAppearanceTitle).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsPrivacyTitle).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsNotifications).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.linkedDevicesTitle).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsAdvancedTitle).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsHelp).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsAbout).color(.black / .white).font(.helveticaNeueRegular, 16)
                            USpace()
                            UHSpace(16)
                            UImage(.smallChevronRight).size(20).mode(.scaleAspectFit).tint(0xC4C4C6)
                            UHSpace(16)
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                }
                UHStack {
                    UHSpace(16)
                    UVStack {
                        UVSpace(16)
                        UHStack {
                            UText(String.settingsLogout).color(.red).font(.helveticaNeueRegular, 16)
                            USpace()
                        }
                        .alignment(.center)
                        UVSpace(16)
                        UVSpace(1).background(0xD4D4D4.color / 0x3B3B3B.color)
                    }
                }.onTapGesture {
                    ImpactFeedback.selected()
                    AlertController(.actionSheet)
                        .destructive(String.settingsLogout) {
                            ImpactFeedback.selected()
                            self.dismiss(animated: true) {
                                Session.isAuthorized = false
                                App.mainScene.switch(to: .logout, animation: .dismiss)
                            }
                        }
                        .cancel(String(.en("Cancel"), .ru("Отмена")))
                        .present(in: self)
                }
            }
            .top(to: 100)
            .edgesToSuperview(leading: 0, trailing: 0, bottom: 0)
        }
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct SettingsViewController_Preview: PreviewProvider, DeclarativePreview {
    static var preview: Preview {
        Preview {
            SettingsViewController()
        }
        .colorScheme(.dark)
        .device(.iPhoneX)
        .language(.en)
    }
}
#endif
