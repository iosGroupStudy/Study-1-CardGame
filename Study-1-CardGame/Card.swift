//
//  Card.swift
//  Study-1-CardGame
//
//  Created by 김동욱 on 2020/05/24.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var identifier: Int
    var emoji: String
    
    init(identifier: Int, emoji: String) {
        self.identifier = identifier
        self.emoji = emoji
    }
}
