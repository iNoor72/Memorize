//
//  MemoryGame.swift
//  Memorize
//
//  Created by Noor Walid on 30/01/2021.
//

import Foundation

struct MemoryGame<Element> {
    var cards: [Card]
    init(numberOfPairs: Int, cardElements: (_ pairs: Int) -> [Element]) {
        cards = []
        for index in 0..<numberOfPairs {
            cards.append(Card(content: cardElements(numberOfPairs)[index], id: index*2))
            cards.append(Card(content: cardElements(numberOfPairs)[index], id: index*2 + 1))
        }
    }
    
    func choose(card: Card) {
        print("Card pressed")
    }
    
    struct Card: Identifiable {
        var isFaceUp : Bool = false
        var isMatched: Bool = false
        var content: Element
        var id : Int
        
    }
}
