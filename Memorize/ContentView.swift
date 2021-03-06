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
        HStack{
            ForEach(viewModel.cards) {card in
                gameShower(card: card).onTapGesture(perform: {
                    viewModel.choose(card: card)
                })
            }.frame(width: 100, height: 100, alignment: .center)
        }
    }
}

struct gameShower: View{
    var card: MemoryGame<String>.Card
    var body: some View{
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius:10.0).stroke(lineWidth:3.0)
                    .fill(Color.white)
                    .foregroundColor(.orange)
            Text(card.content)
            }
        else {
            RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
        }
        }.padding()

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
