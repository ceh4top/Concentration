//
//  Concetration.swift
//  Concentration
//
//  Created by xcode on 19.09.2018.
//  Copyright © 2018 VSU. All rights reserved.
//

import Foundation

class Concetration {
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        cards[index].isFaceUp = !cards[index].isFaceUp
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        for firstIndex in 0 ... cards.count - 1 {
            let lastIndex = Int(arc4random_uniform(UInt32(cards.count)))
            let card = cards[firstIndex]
            cards[firstIndex] = cards[lastIndex]
            cards[lastIndex] = card
        }
    }
}
