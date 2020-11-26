//
//  LocalizedStrings.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus

extension String {
    /// Label for `continue` button.
    static var buttonContinue = String(
        .en("Continue"),
        .ru("Продолжить")
    )
    
    /// Link to the `terms and privacy policy` in the `onboarding splash` view.
    static var onboardingSplashTermsAndPrivacyPolicy = String(
        .en("Terms & Privacy Policy"),
        .ru("Условия и Политика конфиденциальности")
    )
    
    /// Title of the `onboarding splash` view.
    static var onboardingSplashTitle = String(
        .en("Take privacy with you.\nBe yourself in every message."),
        .ru("Возьмите конфиденциальность с собой.\nБудьте собой в каждом сообщении.")
    )
    
    /// Explanation in the `onboarding permissions` view.
    static var onboardingPermissionsExplanation = String(
        .en("Notifications let you see when messages arrive and receive updates about new chat activity."),
        .ru("Уведомления позволяют вам видеть, когда приходят сообщения, и получать информацию о новых действиях в чатах.")
    )

    /// Title of the `onboarding permissions` view.
    static var onboardingPermissionsTitle = String(
        .en("Get the message"),
        .ru("Будьте в курсе")
    )
    
    /// Label for the `give access` button in the `onboarding permissions` view.
    static var onboardingPermissionEnablePermissionsButton = String(
        .en("Enable Permissions"),
        .ru("Включить разрешения")
    )
    
    /// Title of the `onboarding phone number` view.
    static var onboardingPhoneNumberTitle = String(
        .en("Enter your phone number to get started"),
        .ru("Введите свой номер телефона, чтобы начать")
    )

    /// Label indicating that the phone number is invalid in the `onboarding phone number` view.
    static var onboardingPhoneNumberValidationWarning = String(
        .en("Invalid number"),
        .ru("Некорректный номер")
    )
    
    /// A format for a label showing an example phone number. Embeds {{the example phone number}}.
    static func phoneNumberExampleFormat(_ format: String) -> String {
        String(
            .en("Example: \(format)"),
            .ru("Например: \(format)")
        )
    }
    
    /// Label for the `next` button.
    static var buttonNext = String(
        .en("Next"),
        .ru("Далее")
    )
    
    /// Format for the title of the `onboarding verification` view. Embeds {{the user's phone number}}.
    static func onboardingVerificationTitleDefaultFormat(_ phone: String) -> String {
        String(
            .en("Enter the code we sent to \(phone)"),
            .ru("Введите код, который мы отправили на \(phone)")
        )
    }
    
    /// Label for the link that lets users change their phone number in the onboarding views.
    static var onboardingVerificationBackLink = String(
        .en("Wrong number?"),
        .ru("Неправильный номер?")
    )
    
    // Message shown in the conversation list when the inbox is empty.
    static var inboxViewEmptyInbox = String(
        .en("Give your inbox something to write home about. Get started by messaging a friend."),
        .ru("Наполните этот экран интересными разговорами! Отправьте другу своё первое сообщение.")
    )
    
    /// Placeholder text for search bar which filters conversations.
    static var homeViewConversationSearchbarPlaceholder = String(
        .en("Search"),
        .ru("Поиск")
    )
    
    /// Title for settings activity
    static var settingsNavBarTitle = String(
        .en("Settings"),
        .ru("Настройки")
    )
    
    /// Settings table view cell label
    static var settingsInviteTitle = String(
        .en("Invite Your Friends"),
        .ru("Пригласить друзей")
    )
    
    /// The title for the appearance settings.
    static var settingsAppearanceTitle = String(
        .en("Appearance"),
        .ru("Внешний вид")
    )
    
    /// Settings table view cell label
    static var settingsPrivacyTitle = String(
        .en("Privacy"),
        .ru("Конфиденциальность")
    )
    
    /// No comment provided by engineer.
    static var settingsNotifications = String(
        .en("Notifications"),
        .ru("Уведомления")
    )
    
    /// Menu item and navbar title for the device manager
    static var linkedDevicesTitle = String(
        .en("Linked Devices"),
        .ru("Привязанные устройства")
    )
    
    /// No comment provided by engineer.
    static var settingsAdvancedTitle = String(
        .en("Advanced"),
        .ru("Расширенные")
    )
    
    /// Title for support page in app settings.
    static var settingsHelp = String(
        .en("Help"),
        .ru("Помощь")
    )
    
    /// Navbar title
    static var settingsAbout = String(
        .en("About"),
        .ru("О программе")
    )
    
    /// Logout
    static var settingsLogout = String(
        .en("Logout"),
        .ru("Выйти")
    )
    
    /// A keyboard command to present the new message dialog.
    static var keyCommandNewMessage = String(
        .en("New Message"),
        .ru("Новое сообщение")
    )
}
