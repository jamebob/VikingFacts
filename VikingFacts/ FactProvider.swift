//
//   FactProvider.swift
//  test
//
//  Created by Jamie MacLean on 07/02/2018.
//  Copyright © 2018 Butterstone Studios. All rights reserved.

import GameKit

struct FactProvider {
     let factsArray = ["Vikings didn’t wear horned helmets.",
                       "Vikings used a unique liquid to start fires.",
                       "Vikings buried their dead in boats.",
                       "Viking men spent most of their time farming.",
                       "Vikings skied for fun",
                       "lewis and callum are vikings!"
    
    ]
    
    func randomFact() -> String{
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: factsArray.count)
   
        let  randomString = factsArray[randomNumber]
    return randomString}
    
     let otherRandomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: 100)
    
}




 
