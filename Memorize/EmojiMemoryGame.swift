//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Noor Walid on 30/01/2021.
//

import SwiftUI

var emojis = ["😃","😄","😍","😎","🙂","🥰","😡","🤕","👏","♥️"]

class EmojiMemoryGame {
    var memoryCards: MemoryGame<String> = MemoryGame(numberOfPairs: 2, cardElements: {(pairs: Int) -> [String] in
        var array : [String] = []

        for index in 0..<pairs {
            array.append(emojis.randomElement()!)

        }
        
        return array
    })
    
    var cards: [MemoryGame<String>.Card]{
        memoryCards.cards
    }
    
    init(pairs: Int) {
        memoryCards = MemoryGame(numberOfPairs: pairs, cardElements: {(number: Int) -> [String] in
            var array : [String] = []

            for _ in 0..<pairs {
            array.append(emojis.randomElement()!)
            }
            
            return array
        })
    }
    
    init() {
        print("Normal game started")
    }
    
    func choose(card: MemoryGame<String>.Card){
        memoryCards.choose(card: card)
    }
}


