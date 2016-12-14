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
    @IBOutlet weak var topLeftCard: UIButton!
    @IBOutlet weak var centerLeftCard: UIButton!
    @IBOutlet weak var bottomLeftCard: UIButton!
    @IBOutlet weak var topRightCard: UIButton!
    @IBOutlet weak var centerRightCard: UIButton!
    @IBOutlet weak var bottomRightCard: UIButton!
    
    fileprivate lazy var currentDeck = PlayingCardDeck()
    fileprivate lazy var clickCount = Int()
    fileprivate lazy var myGame = StupidGame()
    
    override func viewDidLoad()
    {
       myGame.startGame()
    }
    
    @IBAction func flipCard(_ sender: UIButton)
    {
        CardButton.setTitle("\(myGame.hand[0].getCardData())", for: UIControlState())
        topLeftCard.setTitle("\(myGame.hand[1].getCardData())", for: UIControlState())
        centerLeftCard.setTitle("\(myGame.hand[2].getCardData())", for: UIControlState())
        bottomLeftCard.setTitle("\(myGame.hand[3].getCardData())", for: UIControlState())
        topRightCard.setTitle("\(myGame.hand[4].getCardData())", for: UIControlState())
        centerRightCard.setTitle("\(myGame.hand[5].getCardData())", for: UIControlState())
        bottomRightCard.setTitle("\(myGame.hand[6].getCardData())", for: UIControlState())

        
//        clickCount += 1
//        let words = "The random card button has been clicked \(clickCount) times"
//        CardLabel.text = words
//        
//        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
//        {
//            CardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
//        }
//        else
//        {
//            CardLabel.text = "The deck was exhausted - reinitializing"
//            self.currentDeck = PlayingCardDeck()
//        }
//        
    }
}
