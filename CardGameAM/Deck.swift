//
//  Deck.swift
//  CardGameAM
//
//  Created by Osborne, Jacob on 10/31/16.
//  Copyright © 2016 Osborne, Jacob. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        //Creates a temporary array to hold card objects.
        var tempDeck = [Card]()
        
        //Repeat until there are no cards in self.cards
        while cards.count > 0
        {
            //Chooses  valid random index in the range of 0...cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            
            //Takes the cards from that spot from the deck. The deck decreases in count. This affects the state of the card objects.
            let removedCard = self.cards.remove(at: randomSpot)
            
            //Add the removed card to the end of the temporary deck
            tempDeck.append(removedCard)
        }
        
        //Replace the state deck with the temporary deck
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.remove(at: 0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.remove(at: randomIndex)
        }
        else
        {
            return nil
        }
    }
}


