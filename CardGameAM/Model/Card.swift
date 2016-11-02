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
    private var backImage : UIImage
    
    private var isFaceUp : Bool
    
    init()
    {
        backImage = UIImage(named:"cardback")!
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    func getBackImage() ->UIImage
    {
        return backImage
    }
    func setBackImage(newImage : UIImage)
    {
        backImage = newImage
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
        
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
    
}
