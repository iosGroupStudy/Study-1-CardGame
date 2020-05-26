//
//  Game.swift
//  Study-1-CardGame
//
//  Created by 김동욱 on 2020/05/24.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//

import Foundation

class Game {
    var cards: [Card] = []
    
    var faceUpCardIndex: Int?
    
    let emojiChoices = ["🐡","🐻","🐙","🦄","🦈","🐳","🐸","🦊","🐼"]
        
    init(numberOfPairs: Int) {
        var emojiArrays = emojiChoices.shuffled()
        for identifier in 1...numberOfPairs {
            let emoji = emojiArrays.removeFirst()
            let card = Card(identifier: identifier, emoji: emoji)
            cards.append(card)
            cards.append(card)
        }
        cards.shuffle()
    }
    
    func setCard(at index: Int) -> [Card] {
        cards[index].isFaceUp = true

        if let faceUpCardIndex = faceUpCardIndex {
            self.faceUpCardIndex = nil
            if cards[faceUpCardIndex].identifier == cards[index].identifier && faceUpCardIndex != index {
                cards[faceUpCardIndex].isMatched = true
                cards[index].isMatched = true
            }
        } else {
            self.faceUpCardIndex = index
            for i in 0..<cards.count {
                if i != index {
                    cards[i].isFaceUp = false
                }
            }
            
        }
        print(cards.map { $0.isFaceUp })
        return cards
    }
}
