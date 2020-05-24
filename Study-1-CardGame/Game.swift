//
//  Game.swift
//  Study-1-CardGame
//
//  Created by 김동욱 on 2020/05/24.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//

import Foundation

class Game {
    var cards: [Card] = [] {
        didSet {
            print("efefe")
        }
    }
    
    var faceUpCardId: Int?
    
    init(numberOfPairs: Int) {
        for identifier in 1...numberOfPairs {
            let card = Card(identifier: identifier)
            cards.append(card)
            cards.append(card)
        }
    }
    
    func chooseCard(at index: Int) {
        cards[index].isFaceUp = true

        if let faceUpCardId = faceUpCardId {
            if cards[faceUpCardId].identifier == cards[index].identifier {
                cards[faceUpCardId].isMatched = true
                cards[index].isMatched = true
            } else {
                cards[faceUpCardId].isFaceUp = false
                
            }
        } else {
            faceUpCardId = index
            cards[index].isFaceUp = true
        }
    }
}
