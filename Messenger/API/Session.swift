//
//  Session.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import Foundation

class Session {
    static var welcomeWasShown: Bool {
        get { UserDefaults.standard.bool(forKey: "welcomeWasShown") }
        set { UserDefaults.standard.setValue(newValue, forKey: "welcomeWasShown") }
    }
    static var isAuthorized: Bool {
        get { UserDefaults.standard.bool(forKey: "isAuthorized") }
        set { UserDefaults.standard.setValue(newValue, forKey: "isAuthorized") }
    }
}
