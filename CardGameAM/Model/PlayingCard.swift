//
//  PlayingCard.swift
//  CardGameAM
//
//  Created by Osborne, Jacob on 10/25/16.
//  Copyright © 2016 Osborne, Jacob. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }

    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    
    private var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    
    private var frontImage : UIImage
        {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    }

    
    func getRank() -> Int
        {
            return self.rank
        }
    
        func setRank(rank : Int)
        {
        self.rank = rank
        }
    

    override init()
    {
        
        super.init()
        
        //frontImage = UIImage(named: "cardfront")!
        color = UIColor.blueColor()
        rank = 0
        suit = String()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        frontImage = UIImage(named: "cardfront")!
        color = UIColor.blueColor()
        
        rank = withRank
        suit = ofSuit
        
    }

    override func toString() -> String
    {
        let facing : String
        if self.isUp()
        {
            facing = " is facce up."
        }
        else
        {
            facing = " is face down."
        }
        
        let description = "This Playing Card has a face value of \(rank), a color of \(color), the back image is \(self.getBackImage()), and is of the \(suit) suit \(facing)"

        return description
    }


}
