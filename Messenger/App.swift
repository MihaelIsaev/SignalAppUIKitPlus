//
//  App.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

class App: BaseApp {
    @AppBuilder override var body: AppBuilderContent {
        Lifecycle.didFinishLaunching {
            self.$pushNotificationToken.listen { token in
                // handle your push token here
                print("push token: \(token ?? "n/a")")
            }
        }.willResignActive {
            
        }.willEnterForeground {
            
        }
        MainScene {
            Session.isAuthorized ? .main : Session.welcomeWasShown ? .login : .welcome
        }
        .custom(.welcome) {
            NavigationController(WelcomeViewController()).style(.transparent).hideNavigationBar()
        }
        .loginScreen {
            NavigationController(LoginViewController()).style(.transparent).hideNavigationBar()
        }.mainScreen {
            NavigationController(MainViewController()).style(.transparent).hideNavigationBar()
        }
        Shortcuts {
            Shortcut("NewMessage").title(String.keyCommandNewMessage).icon(type: .message)
        }
    }
    
    static var current: App { App.shared as! App }
    
    var safeInsets: UIEdgeInsets {
        window?.safeInsets ?? .zero
    }
}

extension SceneScreenType {
    static var welcome: Self { "welcome" }
}
