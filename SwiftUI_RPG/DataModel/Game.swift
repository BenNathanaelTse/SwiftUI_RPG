//
//  Game.swift
//  SwiftUI_RPG
//
//  Created by Nathanael Tse on 6/28/20.
//  Copyright © 2020 ijou.de/sign. All rights reserved.
//


import Foundation

struct Game<CardContent> {
     var cards: Array<Card>
    
    mutating func select(card: Card) {
        print("card selected:  \(card)")
        let chosenIndex: Int = self.index(of: card)
        if self.cards[chosenIndex].isSelected == false {
            for index in 0..<cards.count {self.cards[index].isSelected = false}
             self.cards[chosenIndex].isSelected = true
        } else {  self.cards[chosenIndex].isSelected = false }
            
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<self.cards.count{
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: bogus!
    }
    
    init(numberOfEquipment: Int, cardContentFactory: (Int) -> CardContent) { //cardContentFactory Function comes from ViewModel
            cards = Array<Card>() // empty Array
        
        for pairIndex in 0..<12 {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex))
         }

        
    }
    
    struct Card: Identifiable {
        var isSelected: Bool = false
        var content: CardContent // will be the image or string that is presented
        var id: Int
    }
   
}




//struct Game<CardContent> {
//     var cards: Array<Character>
//
//
//    init() { //cardContentFactory Function comes from ViewModel
//            cards = Array<Character>() // empty Array
//
//
//        cards.append(Character(race: CharRace.dwarf, profession: CharClass.mage, gender: CharGender.female))
//
//
//    }
//
//
//}
