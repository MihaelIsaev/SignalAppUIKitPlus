//
//  Conversation.swift
//  Messenger
//
//  Created by Mihael Isaev on 26.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import Foundation
import UIKitPlus

struct Conversation: Identable {
    static var idKey: KeyPath<Conversation, UUID> { \.id }
    
    let id: UUID
    let name, text: String
    let count: Int
    let date: Date
    
    init(id: UUID, name: String, text: String, count: Int, date: Date) {
        self.id = id
        self.name = name
        self.text = text
        self.count = count
        self.date = date
    }
    
    var time: String {
        let df = DateFormatter()
        df.dateFormat = "hh:mm"
        return df.string(from: date)
    }
}

extension Conversation {
    static var demo1: Conversation { .init(id: UUID(), name: "Emily", text: "Запрос на общение", count: 1, date: Date()) }
}
