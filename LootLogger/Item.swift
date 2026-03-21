//
//  Item.swift
//  LootLogger
//
//  Created by Gabes mac on 3/20/26.
//

import UIKit

class Item {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    var dateCreated: Date
    
    init(name: String, serialNumber: String? = nil, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
    }
    
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Shiny", "Dull", "Fancy", "Old", "New", "Cozy", "Hot", "Cold", "Bright", "Dark"]
            let nouns = ["Sword", "Shield", "Potion", "Ring", "Sword", "Boots", "Helmet", "Cape", "Axe", "Bow"]
            
            let randomAdjective = adjectives.randomElement()!
            let randomNoun = nouns.randomElement()!
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int.random(in: 0..<100)
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        } else {
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
    
}
