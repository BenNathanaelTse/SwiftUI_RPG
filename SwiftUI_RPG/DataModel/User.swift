//
//  User.swift
//  SwiftUI_RPG
//
//  Created by Nathanael Tse on 6/26/20.
//  Copyright © 2020 ijou.de/sign. All rights reserved.
//

import Foundation
import UIKit
import os.log

struct User: Codable {
    
    var id: String
    var gold: Int = 250
    var gems: Int = 3
    var userName: String
    var itemArray: [Int]?
    var coordinates: [Int]?
    var quest: [Quest]?
    var party: [Character]?
//    var randomEventsArray: [Int]?
//    var monsterSlainArray: [Int]?
    
    init(username: String) {
        id = UUID().uuidString
        userName = username
    }
    
    struct Quest: Codable {
        var id: Int
        var status: QuestStatus
        
        init(id: Int, status: Int) {
            self.id = id
            self.status = QuestStatus.active
        }
    }
    
    enum QuestStatus: Int, Codable {
        
        case active, completed, claimed
        
        var title: String {
            switch self {
            case .active: return "active"
            case .completed: return "completed"
            case .claimed: return "claimed"
            }
        }
    }

}


// UserDefaults.standard.set(uid, forKey: "UserID")
// UserDefaults.standard.object(forKey: "UserID") as! String
// UserDefaults.standard.object(forKey: "Name") as? String
// UserDefaults.standard.object(forKey: "Gold") as! Int
// UserDefaults.standard.object(forKey: "Gems") as! Int
// UserDefaults.standard.set([999999], forKey: "Items")
// UserDefaults.standard.object(forKey: "Items") as! [Int]
// CURRENT CITY, X, Y, stored for map save
// UserDefaults.standard.object(forKey: "Coordinates") as! [Int]
// UserDefaults.standard.set([0,3,3], forKey: "Coordinates")
// UserDefaults.standard.set([0,1], forKey: "QuestActive")
// UserDefaults.standard.set([0], forKey: "QuestCompleted")
// UserDefaults.standard.object(forKey: "QuestCompleted") as! [Int]
// UserDefaults.standard.set([0], forKey: "QuestOver")
// UserDefaults.standard.set(["" : ""], forKey: "Party")
// stores if random events have been encountered...
// UserDefaults.standard.set([0], forKey: "randomEventsArray")
// UserDefaults.standard.object(forKey: "randomEventsArray") as! [Int]
// stores the monsters that have been slain...
// UserDefaults.standard.set([0], forKey: "monsterSlainArray")
// UserDefaults.standard.object(forKey: "monsterSlainArray") as! [Int]
