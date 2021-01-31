//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Noor Walid on 30/01/2021.
//

import SwiftUI

class EmojiMemoryGame {
    var memoryCards: MemoryGame<String> = MemoryGame(numberOfPairs: 3, cardElements: {(pairs: Int) -> [String] in
        let emojis = ["😃","😄","😍","😎"]
        var array : [String] = []

        for _ in 0..<pairs {
        array.append(emojis.randomElement()!)
        }
        
        return array
    })
    
    var cards: [MemoryGame<String>.Card]{
        memoryCards.cards
    }
    
    init() {
        print("Change")
    }
    
    func choose(card: MemoryGame<String>.Card){
        memoryCards.choose(card: card)
    }
}


