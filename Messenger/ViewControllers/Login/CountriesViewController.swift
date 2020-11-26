//
//  CountriesViewController.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

class CountriesViewController: ViewController {
    @UState var items: [Country] = Countries.list.sorted { $0.name < $1.name }
    
    override func buildUI() {
        super.buildUI()
        body {
            UList {
                UForEach($items) { item in
                    UView {
                        UHStack {
                            UText("+" + item.code).color(.black).font(.helveticaNeueRegular, 18).width(48)
                            UHSpace(16)
                            UText(item.name).color(.black).font(.helveticaNeueRegular, 18)
                        }
                        .edgesToSuperview(leading: 16, trailing: -16)
                        .centerYInSuperview()
                    }
                    .height(44)
                    .onTapGesture {
                        ImpactFeedback.selected()
                        self.selectHandler(item)
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
            .edgesToSuperview()
            .separatorStyle(.singleLine)
        }
    }
    
    private var selectHandler: (Country) -> Void = { _ in }
    
    func onSelect(_ handler: @escaping (Country) -> Void) -> Self {
        selectHandler = handler
        return self
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct CountriesViewController_Preview: PreviewProvider, DeclarativePreview {
    static var preview: Preview {
        Preview {
            CountriesViewController()
        }
        .colorScheme(.light)
        .device(.iPhoneX)
        .language(.ru)
    }
}
#endif
