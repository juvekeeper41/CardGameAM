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
    @IBOutlet weak var CardButton: UIButton!
    
    @IBOutlet weak var CardLabel: UILabel!
    
    private lazy var currentDeck = PlayingCardDeck()
    
    private lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print (otherTemp.toString())
    }
    
    @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "The random card button has been clicked \(clickCount) times"
        CardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            CardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            CardLabel.text = "The deck was exhausted - reinitializing"
            self.currentDeck = PlayingCardDeck()
        }
        
        
        
    }
    
        func orderDeck()
        {
            
        }
}
