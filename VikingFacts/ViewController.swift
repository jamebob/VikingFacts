//
//  ViewController.swift
//  test
//
//  Created by Jamie MacLean on 06/02/2018.
//  Copyright © 2018 Butterstone Studios. All rights reserved.
//
import GameKit
import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var factLabel: UILabel!
    
    let factsStruct = FactProvider()
    let colorProvider = BackgroundColorProvider()
    let beepmachine = BeepStruct()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button(_ sender: Any) {
        let randomColor = colorProvider.randomColor()
        factLabel.text = factsStruct.randomFact()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        beepmachine.makeRandomBeep()
        print (beepmachine.numbersArray)
    }
    
}
