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
    internal var hand : Int
    internal var drawingPile : Int
    internal var drawingDeck : PlayingCardDeck
    
    
   
    //inits
    init()
    {
        self.score = 0
        self.discardPile = Int()
        self.winnerPile = Int()
        self.hand = Int()
        self.drawingPile = Int()
        self.drawingDeck = PlayingCardDeck()
    }
    
    //Methods
    func startGame() -> Void
    {
        drawingDeck.shuffleDeck()
    }
}
