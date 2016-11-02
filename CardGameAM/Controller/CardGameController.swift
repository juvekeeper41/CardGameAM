//
//  CardGameController.swift
//  CardGameAM
//
//  Created by Osborne, Jacob on 10/27/16.
//  Copyright © 2016 Osborne, Jacob. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print (otherTemp.toString())
    }
    
}
