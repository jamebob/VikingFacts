//
//  audioProvider.swift
//  test
//
//  Created by Jamie MacLean on 08/02/2018.
//  Copyright © 2018 Butterstone Studios. All rights reserved.
//
import GameKit
import Foundation
import AudioToolbox



//func beep (soundID :UInt32) {
//let soundBeep :SystemSoundID = soundID
//AudioServicesPlaySystemSound(soundBeep)
//}

struct BeepStruct {

    let numbersArray:[UInt32] = [1025,1030,]
    
    func makeRandomBeep() {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: numbersArray.count)
        
        let soundBeep :SystemSoundID = numbersArray[randomNumber]
        AudioServicesPlaySystemSound(soundBeep)
        print(soundBeep)
     }
}
