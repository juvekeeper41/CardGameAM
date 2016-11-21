//
//  CardView.swift
//  CardGameAM
//
//  Created by Osborne, Jacob on 11/21/16.
//  Copyright © 2016 Osborne, Jacob. All rights reserved.
//

import UIKit

class CardView
{
    internal var isFaceUp : Bool
    internal var cardBack : UIImageView
    internal var cardFront : UIImageView
    internal var topLabel : UILabel
    internal var bottomLabel : UILabel
    internal var cornerCurve : CGFloat
    
    init()
    {
        isFaceUp = false
        cardBack = UIImageView()
        cardFront = UIImageView()
        topLabel = UILabel()
        bottomLabel = UILabel()
        cornerCurve = CGFloat(20.00)
    }
    
    func setup() -> Void
    {
        
    }
    
}
