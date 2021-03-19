//
//  ViewController.swift
//  ForbiddenSkySolo
//
//  Created by Preston Harold on 3/18/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var gearDeck = GearCards()
        gearDeck.shuffleCards()
        gearDeck.dealACard()
        gearDeck.dealACard()
        gearDeck.dealACard()
        
    }

}

