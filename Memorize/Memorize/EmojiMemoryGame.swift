//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Aylin Hyusmen on 22.10.23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = ["👻","🎃","🕷️","😈","💀","👿","🔪","🕸️","😱","🧟‍♂️","🧛🏻","🦉"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 12) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    
    @Published private var game = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
         game.cards
    }
    
    var color: Color {
        .orange
    }
    
    var score: Int {
        game.score
    }
    
    // MARK: - Intents
    
    func shuffle() {
        game.shuffle()
    }
    
    func choose(_ card: Card) {
        game.choose(card)
    }
}
