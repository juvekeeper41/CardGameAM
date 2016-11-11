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
    internal var discardPile : UIImage
    internal var winnerPile : UIImage
    internal var hand : UIImage
    internal var drawingPile : UIImage
    
    
   
    //inits
    init()
    {
        self.score = 0
        self.discardPile = UIImage()
        self.winnerPile = UIImage()
        self.hand = UIImage()
        self.drawingPile = UIImage()
    }
    
    
    
    
    //Methods
    func startGame() -> Void
    {
        
    }
}
