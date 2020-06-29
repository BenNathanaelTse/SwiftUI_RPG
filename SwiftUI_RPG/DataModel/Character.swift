//
//  Character.swift
//  SwiftUI_RPG
//
//  Created by Nathanael Tse on 6/26/20.
//  Copyright © 2020 ijou.de/sign. All rights reserved.
//

import Foundation


func createChar(charRace: CharRace, charClass: CharClass, charGender: CharGender) -> Character {

    var newCharRace: CharRace
    var newCharClass: CharClass
    var newCharGender: CharGender
    
    if charRace == CharRace.all {newCharRace = CharRace(rawValue: Int.random(in: 1...3))!} else {newCharRace = charRace}
    if charClass == CharClass.all {newCharClass = CharClass(rawValue: Int.random(in: 1...5))!} else {newCharClass = charClass}
    if charGender == CharGender.all {newCharGender = CharGender(rawValue: Int.random(in: 1...5))!} else {newCharGender = charGender}
   
    var character: Character = Character(race: newCharRace, profession: newCharClass, gender: newCharGender)

    character.name = "unknown"
    
    if character.charGender == CharGender.male { character.images = ["body1"] } else { character.images = ["body0"] }
    
    character.images?.append(contentsOf: ["eyes1", "ears1", "nose1", "eyebrows1", "mouth1"])

    var hairNumber = 0
        if character.charGender == CharGender.male {
            hairNumber = Int.random(in: 0...7)} else {hairNumber = Int.random(in: 10...13)}
            
    let hairstring = "hair" + String(hairNumber)
    
    character.images?.append(hairstring)
    
    character.equipment = [   0,   0,   0,
                              Int.random(in: 100...104),   0,   0,
                              0,   0,   0,
                              Int.random(in: 1...6),   Int.random(in: 1...6),   Int.random(in: 1...6),]
    
    character.stats = Stats()
    
    return character
    
}


struct Character:  Codable {
    var id: String = ""
    var ownerId: String = ""
    var name: String = ""
    var city: Int = 0
    var experience: Int = 0
    var level: Int = 1
    var stats: Stats
    var statsModified: [Int]?
    var equipment: [Int]?
    var images: [String]?
    var charRace: CharRace
    var charClass: CharClass
    var charGender: CharGender
    var hp: HealthPoints = HealthPoints(current: 0, max: 0)
    var mp: ManaPoints = ManaPoints(current: 0, max: 0)
    var skills : [Int]?
    


    init(race: CharRace, profession: CharClass, gender: CharGender) {
        self.charRace = race
        self.charClass = profession
        self.charGender = gender
        self.stats = Stats()
            // toDo: Add modifier on race and class
    }
    
    
    
    
    struct HealthPoints: Codable {
        var current: Int = 0
        var max: Int = 0
        
        init(current: Int, max: Int) {
            self.current = current
            self.max = max
        }
    }
    
    struct ManaPoints: Codable {
        var current: Int = 0
        var max: Int = 0
        
        init(current: Int, max: Int) {
            self.current = current
            self.max = max
        }
    }
    
    let levelUpArray = [0,30,90,270,650,1400,2300,3400,4800,6400,8500,10000,12000,14000,16500,19500,22500,26500,30500,35500]
    
}



struct Stats: Codable {
    var strength : Int
    var constitution : Int
    var dexterity : Int
    var intelligence : Int
    var wisdom : Int
    var charisma : Int
    var luck : Int
    
    init() {
        self.strength = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
        self.constitution = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
        self.dexterity = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
        self.intelligence = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
        self.wisdom = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
        self.charisma = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
        self.luck = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    }
    
}


enum CharRace: Int, Codable {
    
    case all, human, elf, dwarf
    
    var title: String {
        switch self {
        case .all: return "All"
        case .human: return "Human"
        case .elf: return "Elf"
        case .dwarf: return "Dwarf"
        }
    }
    
    var titleForOverview: String {
        switch self {
        case .all: return "all"
        case .human: return "human"
        case .elf: return "elven"
        case .dwarf: return "dwarven"
        }
    }
    
}

enum CharClass : Int, Codable {
    case all, fighter, thief, ranger, priest ,mage
    
    var title: String {
        switch self {
        case .all: return "all"
        case .fighter: return "Fighter"
        case .thief: return "Thief"
        case .ranger: return "Ranger"
        case .priest: return"Priest"
        case .mage: return "Mage"
        }
    }
}

enum CharGender: Int, Codable {
    
    case all, male, female
    
    var title: String {
        switch self {
        case .all: return "all"
        case .male: return "Male"
        case .female: return "Female"
        }
    }
}
