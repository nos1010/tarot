//
//  Model.swift
//  Tarot
//
//  Created by Rodney Cocker on 29/02/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import Foundation

class Model
{
    let majorArcanaCards:[String:MajorArcanaCard]
    var currentCard:MajorArcanaCard = MajorArcanaCard.Fool;
    
    var currentCardImageName = "";
    
    init()
    {
        
        majorArcanaCards = MajorArcanaCard.createDeck()
    }
    
    // Return the oracles response to the question posed by the user
    func respond()->String
    {
        // Returns a random integer within the range of indexes for the answers array
        let response: Int = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
        
        currentCard = Array(majorArcanaCards.values)[response]
        return currentCard.interpretation
    }
    
    /*
    // Return the Oracle's response to the question posed by the user
    // using dictonary
    func respond(inout cardImageName:String, inout message:String)
    {
        // Returns a random integer within the range of indexes for the answers array
        let response: Int = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
        
        // Convert the values in the dictionary to an Array and retrieve the value
        // at the specified index
        message = Array(majorArcanaCards.values)[response]
        
        // Set the current card name based on the specified index
        cardImageName = Array(majorArcanaCards.keys)[response]
    }
    
    // Return the oracles response to the question posed by the user
    // using a turple
    func respond()-> (cardImageName: String, cardMessage:String)
    {
        // Returns a random integer within the range of indexes for the answers array
        let response: Int = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
        
        // Convert the values in the dictionary to an Array and retrieve the value at
        // the specified index
        let cardMessage = Array(majorArcanaCards.values)[response]
        
        // Set the current card name based on the specified index
        let cardImageName = Array(majorArcanaCards.keys)[response]
        
        // This returns the two values in a tuple
        return (cardImageName, cardMessage)
    }
 */
}