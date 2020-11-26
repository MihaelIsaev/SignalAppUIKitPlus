//
//  Country.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import Foundation
import UIKitPlus

struct Country: Identable {
    static var idKey: KeyPath<Country, String> { \.id }
    
    let id, name, code, format, placeholder: String
    
    init(_ id: String, _ name: String, _ code: String, _ format: String = "(###) ###-########", _ placeholder: String = "(555) 555-0000") {
        self.id = id
        self.name = name
        self.code = code
        self.format = format
        self.placeholder = placeholder
    }
}
