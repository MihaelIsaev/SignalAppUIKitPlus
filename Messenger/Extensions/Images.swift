//
//  Images.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

/// this way to declare `UIImage` and use it like `UImage(.myCustomImage)`
extension UIImage {
    static var logo: UIImage? { UIImage(named: "signal-logo-128.imageset") }
    static var onboardingSplashHero: UIImage? { UIImage(named: "onboarding_splash_hero") }
    static var homeEmptySplash1: UIImage? { UIImage(named: "home_empty_splash_1") }
    static var homeEmptySplash2: UIImage? { UIImage(named: "home_empty_splash_2") }
    static var homeEmptySplash3: UIImage? { UIImage(named: "home_empty_splash_3") }
    static var homeEmptySplash4: UIImage? { UIImage(named: "home_empty_splash_4") }
    static var homeEmptySplash5: UIImage? { UIImage(named: "home_empty_splash_5") }
    static var smallChevronLeft: UIImage? { UIImage(named: "small_chevron_left") }
    static var smallChevronRight: UIImage? { UIImage(named: "small_chevron_right") }
    static var cameraOutline32: UIImage? { UIImage(named: "camera-outline-32") }
    static var cameraSolid24: UIImage? { UIImage(named: "camera-solid-24") }
    static var composeSolid24: UIImage? { UIImage(named: "compose-solid-24") }
    static var searchbarSearch: UIImage? { UIImage(named: "searchbar_search") }
    static var composeCancel: UIImage? { UIImage(named: "compose-cancel") }
}

/// this way to declare `UImage` and use it like `UImage.myCustomImage`
extension UImage {
//    static var ___: UImage { UImage("___").mode(.scaleAspectFit) }
}
