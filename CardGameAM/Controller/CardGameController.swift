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
    
    private lazy var currentDeck = PlayingCardDeck()
    private lazy var clickCount = Int()
    private lazy var myGame = StupidGame()
    
    override func viewDidLoad()
    {
       myGame.startGame()
    }
    
    @IBAction func flipCard(sender: UIButton)
    {
        CardButton.setTitle("\(myGame.hand[0].getCardData())", forState: UIControlState.Normal)
        topLeftCard.setTitle("\(myGame.hand[1].getCardData())", forState: UIControlState.Normal)
        centerLeftCard.setTitle("\(myGame.hand[2].getCardData())", forState: UIControlState.Normal)
        bottomLeftCard.setTitle("\(myGame.hand[3].getCardData())", forState: UIControlState.Normal)
        topRightCard.setTitle("\(myGame.hand[4].getCardData())", forState: UIControlState.Normal)
        centerRightCard.setTitle("\(myGame.hand[5].getCardData())", forState: UIControlState.Normal)
        bottomRightCard.setTitle("\(myGame.hand[6].getCardData())", forState: UIControlState.Normal)

        
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
