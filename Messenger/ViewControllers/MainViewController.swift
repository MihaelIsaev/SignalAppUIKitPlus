//
//  MainViewController.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

final class MainViewController: ViewController {
    @UState var conversations: [Conversation] = []
    
    lazy var refreshControl = URefreshControl().tint(.black / .white).onRefresh(loadData)
    
    override func buildUI() {
        super.buildUI()
        background(.white / .black)
        body {
            UView{
                UView {
                    UText("J")
                        .color(.white)
                        .font(.helveticaNeueMedium, 18)
                        .alignment(.center)
                        .edgesToSuperview()
                }
                .background(0x54545C)
                .size(32)
                .circle()
                .edgesToSuperview(leading: 16, bottom: -12)
                .onTapGesture {
                    ImpactFeedback.selected()
                    self.present(SettingsViewController(), animated: true)
                }
                UText("Messenger")
                    .color(.black / .white)
                    .font(.helveticaNeueMedium, 16)
                    .centerXInSuperview()
                    .bottomToSuperview(-16)
                UHStack {
                    UImage(.cameraSolid24)
                        .mode(.scaleAspectFit)
                        .tint(.black / .white)
                        .size(24)
                        .onTapGesture { ImpactFeedback.selected() }
                    UHSpace(20)
                    UImage(.composeSolid24)
                        .mode(.scaleAspectFit)
                        .tint(.black / .white)
                        .size(24)
                        .onTapGesture { ImpactFeedback.selected() }
                }
                .edgesToSuperview(trailing: -20, bottom: -12)
            }
            .background(.navigationBarBackground)
            .edgesToSuperview(top: 0, leading: 0, trailing: 0)
            .height(80 + App.current.safeInsets.top)
            .tag(100)
            UVStack {
                UImage(.homeEmptySplash4).mode(.scaleAspectFit).size(220, 240)
                UText(String.inboxViewEmptyInbox)
                    .color(0xB9B9B9)
                    .font(.helveticaNeueRegular, 16)
                    .alignment(.center)
                    .multiline()
            }
            .hidden($conversations.map { $0.count > 0 })
            .centerInSuperview()
            UList {
                UVSpace(8)
                UHStack {
                    UHSpace(16)
                    UTextField()
                        .height(32)
                        .background(0xE9E9E9.color / 0x3B3B3B.color)
                        .tint(.black / .white)
                        .corners(8)
                        .leftView {
                            UHStack {
                                UHSpace(8)
                                UImage(.searchbarSearch).tint(0xB9B9B9)
                                UHSpace(8)
                            }
                        }
                        .placeholder(
                            String.homeViewConversationSearchbarPlaceholder
                                .foreground(0x787878)
                                .font(.helveticaNeueRegular, 16)
                        )
                        .shouldReturn {
                            $0.resignFirstResponder()
                        }
                    UHSpace(16)
                }
                UForEach($conversations) { conversation in
                    UVSpace(16)
                    UHStack {
                        UHSpace(16)
                        UView {
                            UText("\(conversation.name.first!)".uppercased())
                                .color(.white)
                                .font(.helveticaNeueMedium, 22)
                                .alignment(.center)
                                .edgesToSuperview()
                            UView {
                                UText("\(conversation.count)")
                                    .color(.white)
                                    .font(.helveticaNeueMedium, 11)
                                    .alignment(.center)
                                    .edgesToSuperview(h: 4, v: 0)
                            }
                            .background(0x2C6BED)
                            .width(>=20)
                            .height(20)
                            .border(2, .white / .black)
                            .circle()
                            .edgesToSuperview(top: 0)
                            .centerXInSuperview(-5, side: .trailing)
                        }
                        .background(0x044F5C)
                        .size(56)
                        .circle()
                        UHSpace(16)
                        UVStack {
                            UText(conversation.name).color(.black / .white).font(.helveticaNeueMedium, 16)
                            UVSpace(4)
                            UText(conversation.text).color(.black / .white).font(.helveticaNeueRegular, 14)
                        }
                        USpace()
                        UHSpace(16)
                        UVStack {
                            UText(conversation.time).color(.black / .white).font(.helveticaNeueRegular, 12)
                            USpace()
                        }
                        UHSpace(16)
                    }
                    .alignment(.center)
                }
            }
            .refreshControl(refreshControl)
            .top(to: 100)
            .edgesToSuperview(leading: 0, trailing: 0, bottom: 0)
            .hidden($conversations.map { $0.count == 0 })
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.conversations = [.demo1]
        }
    }
    
    func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            refreshControl.endRefreshing()
            
        }
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct MainViewController_Preview: PreviewProvider, DeclarativePreview {
    static var preview: Preview {
        Preview {
            let vc = MainViewController()
            vc.conversations = [.demo1]
            return vc
        }
        .colorScheme(.light)
        .device(.iPhoneX)
        .language(.en)
    }
}
#endif
