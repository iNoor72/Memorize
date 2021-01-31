//
//  ContentView.swift
//  Memorize
//
//  Created by Noor Walid on 30/01/2021.
//

import SwiftUI

var viewModel = EmojiMemoryGame()

struct ContentView: View {
    var body: some View {
        ForEach(0..<4) {_ in
            gameShower()
        }
        
    }
}

struct gameShower: View{
    var body: some View{
        HStack {
            ForEach (viewModel.cards) { card in
                cardView(card: card)
            }.frame(width: 100, height: 100, alignment: .center)
        }
    }
}

struct cardView: View{
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                    .foregroundColor(.orange)
                Text(card.content)
        }.padding()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
