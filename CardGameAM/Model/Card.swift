//
//  Card.swift
//  CardGameAM
//
//  Created by Osborne, Jacob on 10/25/16.
//  Copyright © 2016 Osborne, Jacob. All rights reserved.
//

import UIKit

class Card
{
    
    private var isFaceUp : Bool
    
    init()
    {
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
   
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
        
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    {
        }
    
}
