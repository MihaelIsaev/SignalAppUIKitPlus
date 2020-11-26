//
//  TextFields.swift
//  Messenger
//
//  Created by Mihael Isaev on 26.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import UIKitPlus
import AnyFormatKit

extension UTextField {
    static var base: UTextField { UTextField().tint(.black).color(.black) }
    
    static func welcome(_ placeholder: String) -> UTextField {
        base.placeholder(
            placeholder.foreground(.welcomeTextFieldPlaceholder).font(.helveticaNeueRegular, 16)
        )
        .tint(.black / .white)
    }
    
    static func welcomePhone(_ country: UState<Country>) -> UTextField {
        let tf = base
            .placeholder(
                String.phoneNumberExampleFormat(country.wrappedValue.placeholder).foreground(.welcomeTextFieldPlaceholder).font(.helveticaNeueRegular, 16)
            )
            .tint(.black / .white)
            .autocapitalization(.none)
            .autocorrection(.no)
            .keyboard(.phonePad)
            .font(.helveticaNeueRegular, 16)
            .color(.black / .white)
            .formatCharacters { textField, range, text in
                let result = DefaultTextInputFormatter(textPattern: country.wrappedValue.format).formatInput(currentText: textField.text ?? "", range: range, replacementString: text)
                textField.text = result.formattedText
            }
        country.listen { new in
            tf.placeholder(
                String.phoneNumberExampleFormat(new.placeholder).foreground(.welcomeTextFieldPlaceholder).font(.helveticaNeueRegular, 16)
            ).formatCharacters { textField, range, text in
                let result = DefaultTextInputFormatter(textPattern: new.format).formatInput(currentText: textField.text ?? "", range: range, replacementString: text)
                textField.attributedText = result.formattedText.foreground(.black / .white).font(.helveticaNeueRegular, 16).attributedString
            }
        }
        return tf
    }
}
