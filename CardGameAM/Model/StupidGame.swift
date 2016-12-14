//
//  StupidGame.swift
//  CardGameAM
//
//  Created by Osborne, Jacob on 11/11/16.
//  Copyright © 2016 Osborne, Jacob. All rights reserved.
//

import UIKit
import Foundation

class StupidGame
{
    
    //Declaration Section
    internal var score : Int
    internal var discardPile : Int
    internal var winnerPile : Int
    internal var hand : [PlayingCard]
    internal var drawingPile : Int
    internal var drawingDeck : PlayingCardDeck
    
    
   
    //inits
    init()
    {
        self.score = 0
        self.discardPile = Int()
        self.winnerPile = Int()
        self.hand = [PlayingCard]()
        self.drawingPile = Int()
        self.drawingDeck = PlayingCardDeck()
        //playMatchGame()
    }
    
    //Methods
    func startGame() -> Void
    {
        drawingDeck.shuffleDeck()
        drawCards()
    }
    
    func drawCards() -> Void
    {
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
    }
    
    func checkMatch() -> Int
    {
        var points = Int()
        let tempCount = hand.count
        for var outer in 0..<tempCount
        {
           for var inner in 0..<tempCount
            {
                if(outer != inner) && hand[outer].rank == hand[inner].rank
                {
                    hand.remove(at: inner)
                    points += 2
                    inner -= 1
                }
            }
            if(hand.count != tempCount)
            {
                hand.remove(at: outer)
                points += 2
                outer -= 1
            }
        }
        let negativePoints = hand.count
        return points - negativePoints
    }
    
//    func playMatchGame() -> Void
//    {
//            var cardCount = 52
//            while(cardCount >= 7 )
//            {
//                checkMatch()
//                score += checkMatch()
//                hand.removeAll()
//                
//                cardCount -= 7
//            }
}


