//
//  FBSky.swift
//  ForbiddenSkySolo
//
//  Created by Preston Harold on 3/18/21.
//

import Foundation

struct GearCards {
    
    var cards: [String] = ["Defrayer", "Time Throttle", "Med Kit", "Stratoscope", "Remote fuser", "Gravity Hook", "Platform Clamp", "Strike Shoield", "Strike Shield", "Jet Pack", "Jet Pack", "Jet Pack"]
    var discardPile: [String] = []
    
    init() {
        
    }
    
    enum cardType {
        case defrayer, timeThrottle, medKit, stratoscope, remoteFuser, gravityHook, platformClamp, strikeShield, jetPack
    }
    
    mutating func shuffleCards() {
        cards.shuffle()
        print(cards)
    }
    
    mutating func dealACard() -> String{
        if cards.count > 0 {
            let card = cards[0]
            cards.remove(at: 0)
            print(card)
            print(cards)
            return(card)
        } else if cards.count == 0  {
            let card = cards[0]
            cards = discardPile
            discardPile = []
            shuffleCards()
            return card
        } else cards.count == 0 || discardPile.count == 0 {
            
        }
    }
    
    mutating func returnGearCard(whatCard: cardType) {
        switch whatCard {
        case .defrayer:
            discardPile.append("Defrayer")
        case .timeThrottle:
            discardPile.append("Time Throttle")
        case .medKit:
            discardPile.append("Med Kit")
        case .stratoscope:
            discardPile.append("Statoscope")
        case .remoteFuser:
            discardPile.append("Remote Fuser")
        case .gravityHook:
            discardPile.append("Gravity Hook")
        case .platformClamp:
            discardPile.append("Platform Clamp")
        case .strikeShield:
            discardPile.append("Strike Shield")
        case .strikeShield:
            discardPile.append("Strike Shield")
        case .jetPack:
            discardPile.append("Jet Pack")
        case .jetPack:
            discardPile.append("Jet Pack")
        case .jetPack:
            discardPile.append("Jet Pack")
        default:
            break
        }
    }
}


