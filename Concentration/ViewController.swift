//
//  ViewController.swift
//  Concentration
//
//  Created by xcode on 05.09.2018.
//  Copyright © 2018 VSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cardButtons: [UIButton]!
    lazy var game = Concetration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    var flipCard = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCard)"
        }
    }
    
    var emojiChoices: [String] = ["🐶","🐱","🐹","🦊","🐻","🦄","🐺","🐷"]
    var emoji = Dictionary<Int, String>()
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard += 1
        if let cardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
            checkCards()
        } else {
            print("Choosen card")
        }
    }
    
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil {
            var iEmoji: String
            repeat {
                let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
                iEmoji = emojiChoices[randomIndex]
            } while(emoji.values.contains(iEmoji))
            emoji[card.identifier] = iEmoji
            return iEmoji
        } else {
            return emoji[card.identifier]!
        }
    }
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if card.isFaceUp {
                button.setTitle(emoji (for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            } else if (!button.isEnabled) {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            }
        }
    }
    
    func checkCards() {
        var indices = [Int]()
        for index in game.cards.indices {
            if game.cards[index].isFaceUp {
                indices.append(index)
            }
        }
        
        if (indices.count == 2) {
            if (game.cards[indices[0]].identifier == game.cards[indices[1]].identifier) {
                cardButtons[indices[0]].isEnabled = false
                cardButtons[indices[1]].isEnabled = false
            }
            
            game.chooseCard(at: indices[0])
            game.chooseCard(at: indices[1])
        }
    }
}

