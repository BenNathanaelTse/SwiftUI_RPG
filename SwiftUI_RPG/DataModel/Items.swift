//
//  Items.swift
//  SwiftUI_RPG
//
//  Created by Nathanael Tse on 6/26/20.
//  Copyright © 2020 ijou.de/sign. All rights reserved.
//

import Foundation

// scrolls are single use und stored in the backpack (items 9-11) they dont consume mana but themselves
// mapStrinzs are carried like weapons of mages and are not consumables but spells cost mana



class ItemsObject {
    static let shared = ItemsObject()
    
    private init() { }
    
    var staticItems: [Item] {
        return createStaticItems()
    }
    
    private func createStaticItems() -> [Item] {
        var itemArray: [Item] = []
        
        
        
        let nothing = Item(id: 0, name: "nothing", description: "", type: ItemType.item, image: "", value: 0)
        itemArray.append(nothing)
        
        //MARK: Potions
        
        let HPPotionSmall = Item(id: 1, name: "small HP Potion", description: "regenerates a small amount of HP.", type: ItemType.item, image: "Item_Potion_29", value: 10)
        itemArray.append(HPPotionSmall)
        
        let MPPotionSmall = Item(id: 2, name: "small MP Potion", description: "regenerates a small amount of MP.", type: ItemType.item, image: "Item_Potion_31", value: 10)
        itemArray.append(MPPotionSmall)
        
        let HPPotionBig = Item(id: 3, name:  "HP Potion", description: "regenerates some HP.", type: ItemType.item, image: "Item_Potion_24", value: 30)
        itemArray.append(HPPotionBig)
        
        let MPPotionBig = Item(id: 4, name: "MP Potion", description: "regenerates some MP.", type: ItemType.item, image: "Item_Potion_33", value: 30)
        itemArray.append(MPPotionBig)
        
        let HPPotionBigger = Item(id: 5, name:  "big HP Potion", description: "regenerates HP.", type: ItemType.item, image: "Item_Potion_37", value: 60)
        itemArray.append(HPPotionBigger)
        
        let MPPotionBigger = Item(id: 6, name: "big MP Potion", description: "regenerates  MP.", type: ItemType.item, image: "Item_Potion_35", value: 60)
        itemArray.append(MPPotionBigger)
        
        // id 7
        // id 8
        // id 9
        // id 10
        
        let emptyBottle = Item(id: 11, name: "Empty Bottle", description: "An empty bottle", type: ItemType.item, image: "Item_Potion_197", value: 5)
        itemArray.append(emptyBottle)
        
        var fairyInABottle = Item(id: 12, name: "Fairy in a bottle", description: "A fairy caught in a bottle.", type: ItemType.item, image: "Item_Potion_197_withFairy", value: 2000)
        fairyInABottle.rarity = .epic
        itemArray.append(emptyBottle)
        
        
        
        //MARK: Weapons
        // Starting at  100 Sword
        //              110 Daggers
        //              120 Bows
        //              130 Staffs
        //              140 Clubs
        
        //MARK: Basic Swords
        
        // FOR ALL SWORDS ADD ABILITY TO ATTACK WITH CALCULATED STRENGTH
        
        var sword = Item(id: 100, name: "Sword", description: "A common sword.", type: ItemType.weapon, image: "weapon_sword11.png", value: 10)
        sword.requiredClass = [CharClass.fighter]
        itemArray.append(sword)
        
        var fineSword = Item(id: 101, name: "Fine Sword", description: "A well craftet sword.", type: ItemType.weapon, image: "weapon_sword16.png", value: 20)
        fineSword.requiredClass = [CharClass.fighter]
        fineSword.rarity = .uncommon
        itemArray.append(fineSword)
        
        var broadsword = Item(id: 102, name: "Broadsword", description: "A rare sword.", type: ItemType.weapon, image: "weapon_sword20.png", value: 100)
        broadsword.requiredClass = [CharClass.fighter]
        broadsword.rarity = .rare
        itemArray.append(broadsword)
        
        var mithrilSword = Item(id: 103, name: "Mithril Sword", description: "An epic mythril sword.", type: ItemType.weapon, image: "weapon_sword18.png", value: 1300)
        mithrilSword.requiredClass = [CharClass.fighter]
        mithrilSword.rarity = .epic
        mithrilSword.statsBonus = [1,0,0]
        itemArray.append(mithrilSword)
        
        var legendarySword = Item(id: 104, name: "Bane, the Slasher", description: "A legendary sword.", type: ItemType.weapon, image: "weapon_sword21.png", value: 9900)
        legendarySword.requiredClass = [CharClass.fighter]
        legendarySword.rarity = .legendary
        legendarySword.statsBonus = [2,0,0]
        itemArray.append(legendarySword)
        
        
        //MARK: Basic Daggers
        // 110 Daggers
        
        // add ability to attack with DEXTERITY
        
        var dagger1 = Item(id: 110, name: "small Dagger", description: "A small dagger.", type: ItemType.weapon, image: "weapon_dagger04.png", value: 10)
        dagger1.requiredClass = [CharClass.thief]
        dagger1.rarity = .common
        itemArray.append(dagger1)
        
        var dagger2 = Item(id: 111, name: "Dagger", description: "A heavy dagger.", type: ItemType.weapon, image: "weapon_dagger01.png", value: 30)
        dagger2.requiredClass = [CharClass.thief]
        dagger2.rarity = .uncommon
        itemArray.append(dagger2)
        
        var dagger3 = Item(id: 112, name: "Sharp Dagger", description: "A rare dagger.", type: ItemType.weapon, image: "weapon_dagger02.png", value: 120)
        dagger3.requiredClass = [CharClass.thief]
        dagger3.rarity = .rare
        itemArray.append(dagger3)
        
        var dagger4 = Item(id: 113, name: "Mythril Dagger", description: "An epic mythril dagger.", type: ItemType.weapon, image: "weapon_dagger03.png", value: 350)
        dagger4.requiredClass = [CharClass.thief]
        dagger4.rarity = .epic
        itemArray.append(dagger4)
        
        var dagger5 = Item(id: 114, name: "Nirvana, Reaver of the Talon", description: "A legendary dagger.", type: ItemType.weapon, image: "weapon_dagger05.png", value: 9000)
        dagger5.requiredClass = [CharClass.thief]
        dagger5.rarity = .legendary
        itemArray.append(dagger5)
        
        
        //MARK: Basic Bows
        //              120 Bows
        
        // implement ranged attack on DEXTERITY
        
        var bow1 = Item(id: 120, name: "Wooden Bow", description: "A common bow.", type: ItemType.weapon, image: "weapon_bow01", value: 10)
        bow1.requiredClass = [CharClass.ranger]
        bow1.rarity = .common
        itemArray.append(bow1)
        
        var bow2 = Item(id: 121, name: "Long Bow", description: "A common bow.", type: ItemType.weapon, image: "weapon_bow03", value: 30)
        bow2.requiredClass = [CharClass.ranger]
        bow2.rarity = .uncommon
        itemArray.append(bow2)
        
        var bow3 = Item(id: 122, name: "Enforced Bow", description: "A rare bow.", type: ItemType.weapon, image: "weapon_bow02", value: 120)
        bow3.requiredClass = [CharClass.ranger]
        bow3.rarity = .rare
        itemArray.append(bow3)
        
        var bow4 = Item(id: 123, name: "Mythril Bow", description: "An epic mythril bow.", type: ItemType.weapon, image: "weapon_bow04", value: 350)
        bow4.requiredClass = [CharClass.ranger]
        bow4.rarity = .epic
        itemArray.append(bow4)
        
        var bow5 = Item(id: 124, name: "Bloodthorn, the Piercer", description: "A legendary bow.", type: ItemType.weapon, image: "weapon_bow09", value: 9000)
        bow5.requiredClass = [CharClass.ranger]
        bow5.rarity = .legendary
        itemArray.append(bow5)
        
        
        //MARK: Basic Staffs
        //              130 Staffs
        //              Add attack witb STRENGTH
        
        
        var staff1 = Item(id: 130, name: "Wooden Staff", description: "A common staff.", type: ItemType.weapon, image: "weapon_staff02.png", value: 10)
        staff1.requiredClass = [CharClass.mage]
        staff1.rarity = .common
        itemArray.append(staff1)
        
        var staff2 = Item(id: 131, name: "Steel Staff", description: "A heavy staff.", type: ItemType.weapon, image: "weapon_staff04.png", value: 30)
        staff2.requiredClass = [CharClass.mage]
        staff2.rarity = .uncommon
        itemArray.append(staff2)
        
        var staff3 = Item(id: 132, name: "Enforced Staff", description: "A rare staff.", type: ItemType.weapon, image: "weapon_staff06.png", value: 120)
        staff3.requiredClass = [CharClass.mage]
        staff3.rarity = .rare
        itemArray.append(staff3)
        
        var staff4 = Item(id: 133, name: "Mythril Staff", description: "An epic mythril staff.", type: ItemType.weapon, image: "weapon_staff13.png", value: 350)
        staff4.requiredClass = [CharClass.mage]
        staff4.rarity = .epic
        itemArray.append(staff4)
        
        var staff5 = Item(id: 134, name: "Vision, Watcher of the Raven", description: "A legendary staff.", type: ItemType.weapon, image: "weapon_staff11.png", value: 9000)
        staff5.requiredClass = [CharClass.mage]
        staff5.rarity = .legendary
        itemArray.append(staff5)
        
        
        //MARK: Basic Clubs
        //              140 Clubs
        //              Add attack witb STRENGTH
        
        var club1 = Item(id: 140, name: "Wooden Club", description: "A common club.", type: ItemType.weapon, image: "weapon_club02.png", value: 10)
        club1.requiredClass = [CharClass.priest]
        club1.rarity = .common
        itemArray.append(club1)
        
        var club2 = Item(id: 141, name: "Stone Club", description: "A strong club.", type: ItemType.weapon, image: "weapon_club12.png", value: 30)
        club2.requiredClass = [CharClass.priest]
        club2.rarity = .uncommon
        itemArray.append(club2)
        
        var club3 = Item(id: 142, name: "Metal Club", description: "A rare club.", type: ItemType.weapon, image: "weapon_club14.png", value: 120)
        club3.requiredClass = [CharClass.priest]
        club3.rarity = .rare
        itemArray.append(club3)
        
        var club4 = Item(id: 143, name: "Mithril Club", description: "An epic mythril club.", type: ItemType.weapon, image: "weapon_club04.png", value: 350)
        club4.requiredClass = [CharClass.priest]
        club4.rarity = .epic
        itemArray.append(club4)
        
        var club5 = Item(id: 144, name: "Spike, the Morningstar", description: "A legendary club.", type: ItemType.weapon, image: "weapon_club05.png", value: 9000)
        club5.requiredClass = [CharClass.priest]
        club5.rarity = .legendary
        itemArray.append(club5)
        
        
        //
        //
        //
        //
        //        var crossbow = Item()
        //        crossbow.name = "Mithril Crossbow"
        //        crossbow.id = 36
        //        crossbow.value = 400
        //        crossbow.image = "crossbow2"
        //        crossbow.itemType = ItemType.weapon
        //        crossbow.abilities = [14,4,200]
        //        crossbow.requiredClass = [CharClass.ranger, CharClass.thief]
        //        crossbow.rarity = ItemRarity.epic
        //        crossbow.description = "An epic crossbow."
        //        itemArray.append(crossbow)
        //
        //
        //        var warhammer = Item()
        //        warhammer.name = "Mithril Warhammer"
        //        warhammer.id = 37
        //        warhammer.value = 400
        //        warhammer.image = "weapon_hammer12"
        //        warhammer.itemType = ItemType.weapon
        //        warhammer.abilities = [13,200]   // additional ability: STUN when hit
        //        warhammer.requiredClass = [CharClass.fighter, CharClass.priest]
        //        warhammer.rarity = ItemRarity.epic
        //        warhammer.description = "An epic warhammer."
        //        itemArray.append(warhammer)
        //
        //
        //        var lance = Item()
        //        lance.name = "Mithril Lance"
        //        lance.id = 38
        //        lance.value = 400
        //        lance.image = "weapon_polearm04"
        //        lance.itemType = ItemType.weapon
        //        lance.abilities = [12,3,200]   // additional ability: STUN when hit
        //        lance.requiredClass = [CharClass.fighter, CharClass.mage]
        //        lance.rarity = ItemRarity.epic
        //        lance.description = "An epic lance."
        //        itemArray.append(lance)
        //
        //        var thowingstar = Item()
        //        thowingstar.name = "Mithril Thowingstar"
        //        thowingstar.id = 38
        //        thowingstar.value = 400
        //        thowingstar.image = "throwingstar2"
        //        thowingstar.itemType = ItemType.weapon
        //        thowingstar.abilities = [12,200]   // additional ability: STUN when hit
        //        thowingstar.requiredClass = [CharClass.thief, CharClass.ranger]
        //        thowingstar.rarity = ItemRarity.epic
        //        thowingstar.description = "An epic throwing star."
        //        itemArray.append(thowingstar)
        //
        //        var woodenShield = Item()
        //        woodenShield.name = "Simple Wooden Shield"
        //        woodenShield.id = 40
        //        woodenShield.value = 10
        //        woodenShield.description = "Just some wooden shield."
        //        woodenShield.rarity = ItemRarity.common
        //        woodenShield.image = "Badge31.png"
        //        woodenShield.bonusStats = [0,0,0,0,0,0,0,0]
        //        woodenShield.itemType = ItemType.shield
        //        woodenShield.requiredClass = [.fighter, .priest]
        //        woodenShield.abilities = [1]
        //
        //        axe1.name = "small Axe"
        //        axe1.id = 333
        //        axe1.value = 20
        //        axe1.image = "weapon_axe14.png"
        //        axe1.itemType = ItemType.weapon
        //        axe1.description = "A small axe"
        //        axe1.abilities = [15]
        //        axe1.rarity = ItemRarity.common
        //        axe1.requiredRace = [CharRace.dwarf, CharRace.human]
        //        axe1.requiredClass = [CharClass.fighter, CharClass.ranger]
        //
        //        axe2.name = "light Axe"
        //        axe2.id = 333
        //        axe2.value = 40
        //        axe2.image = "weapon_axe01.png"
        //        axe2.itemType = ItemType.weapon
        //        axe2.description = "A light axe"
        //        axe2.requiredRace = [CharRace.dwarf, CharRace.human]
        //        axe2.requiredClass = [CharClass.fighter, CharClass.ranger]
        //        axe2.abilities = [15]
        //
        //        axe3.name = "dwarven Axe"
        //        axe3.id = 333
        //        axe3.value = 80
        //        axe3.image = "weapon_axe13.png"
        //        axe3.itemType = ItemType.weapon
        //        axe3.description = "A dwarven axe"
        //        axe3.requiredRace = [CharRace.dwarf]
        //        axe3.requiredClass = [CharClass.fighter]
        //        axe3.rarity = .uncommon
        //        axe3.abilities = [2]
        //
        //        axe4.name = "heavy dwarven Axe"
        //        axe4.id = 333
        //        axe4.value = 150
        //        axe4.image = "weapon_axe09.png"
        //        axe4.itemType = ItemType.weapon
        //        axe4.description = "A heavy axe"
        //        axe4.rarity = ItemRarity.rare
        //        axe4.requiredRace = [CharRace.dwarf]
        //        axe4.requiredClass = [CharClass.fighter]
        //        axe4.abilities = [15]
        //
        //
        //        axe5.name = "Edge of Misery"
        //        axe5.bonusStats = [0,2,0,0,0,0,0,4]
        //        axe5.rarity = ItemRarity.legendary
        //        axe5.id = 333
        //        axe5.value = 6890
        //        axe5.image = "weapon_axe15.png"
        //        axe5.itemType = ItemType.weapon
        //        axe5.description = "A legendary axe"
        //        axe5.requiredRace = [CharRace.dwarf]
        //        axe5.requiredClass = [CharClass.fighter]
        //        axe5.abilities = [15]
        //
        //
        //        axe6.name = "Mooncleaver, Soul of the West"
        //        axe6.bonusStats = [0,4,0,0,0,0,0,4]
        //        axe6.rarity = ItemRarity.legendary
        //        axe6.id = 333
        //        axe6.value = 3950
        //        axe6.image = "weapon_axe08.png"
        //        axe6.itemType = ItemType.weapon
        //        axe6.description = "A legendary axe"
        //        axe6.requiredClass = [CharClass.fighter]
        //        axe6.requiredRace = [CharRace.dwarf]
        //        axe6.abilities = [15]
        
        
        
        
        
        
        
        //
        //        //MARK: Armor
        //
        //        boots.name = "Boots"
        //        boots.id = 800
        //        boots.image = "boots"
        //        boots.description = "standard boots"
        //        boots.itemType = ItemType.boots
        //        boots.requiredRace = [CharRace.human]
        //
        
        //
        //        armor.name = "Armor"
        //        armor.id = 300
        //        armor.image = "armor.png"
        //        armor.itemType = ItemType.armor
        //        armor.description = "standard light armor"
        //        armor.armorBonus = 3
        //
        //
        //
        //        //MARK: Aura
        //
        //
        //        aurawind.name = "Natures Blessing"
        //           aurawind.id = 200
        //           aurawind.image = "aura_nature.png"
        //           aurawind.itemType = ItemType.aura
        //           aurawind.description = "an aura of wind"
        //
        //
        //
        //           aurafire.name = "Cleansed by Fire"
        //           aurafire.id = 200
        //           aurafire.image = "aura_fire.png"
        //           aurafire.itemType = ItemType.aura
        //
        //           aurafire.description = "an aura of fire"
        //
        //           auralightning.name = "Stuck by Lightning"
        //           auralightning.id = 400
        //           auralightning.image = "aura_lightning.png"
        //           auralightning.itemType = ItemType.aura
        //           auralightning.description = "an aura of lightning"
        //
        //           auralightning.armorBonus = 3
        //
        //           auraice.name = "Baptized in Water"
        //           auraice.id = 50
        //           auraice.image = "aura_water.png"
        //           auraice.itemType = ItemType.aura
        //           auraice.description = "an aura of ice"
        //
        //
        //
        //
        // ADD ITEMS FROM HERE//
        //
        //        //MARK: Jewlery
        //      Starting from 700
        
        var necklace = Item(id: 700, name: "Golden Necklace", description: "a finely crafted shimmering necklace", type: ItemType.necklace, image: "Item_Potion_193.png", value: 4000)
        necklace.rarity = .epic
        itemArray.append(necklace)
        
        // Rings starting from 710
        
        var ring1 = Item(id: 710, name: "Natures Blessing", description: "a powerful ring", type: ItemType.ring, image: "ring1.png", value: 36000)
        ring1.rarity = .legendary
        itemArray.append(ring1)
        
        var ring2 = Item(id: 711, name: "Eye of the Raven", description: "a mysteriously shimmering ring", type: ItemType.ring, image: "ring2.png", value: 35200)
        ring2.rarity = .legendary
        itemArray.append(ring2)
        
        var ring3 = Item(id: 712, name: "Emblem of Ragnaros", description: "a with a warm glow", type: ItemType.ring, image: "ring3.png", value: 31425)
        ring3.rarity = .legendary
        itemArray.append(ring3)
        
        var ring4 = Item(id: 713, name: "Shivas Touch", description: "this ring is freezing cold", type: ItemType.ring, image: "ring4.png", value: 38200)
        ring4.rarity = .legendary
        itemArray.append(ring4)
        
        
        
        
        // STOP ADDING ITEMS
        
        
        //MARK: Maps
        
        //        mapStrinz.name = "Map of Strinz-Trinitatis"
        //        mapStrinz.id = 90
        //        mapStrinz.image = "scrollMap"
        //        mapStrinz.useImage = "map0background"
        //        mapStrinz.itemType = ItemType.item
        //        mapStrinz.description = "A map of the Strinz-Trinitatis area."
        //        mapStrinz.value = 10
        //        mapStrinz.rarity = .common
        //
        //        mapLimbach.name = "Map of Limbach"
        //        mapLimbach.id = 91
        //        mapLimbach.image = "scrollMap"
        //        mapLimbach.useImage = "map1background"
        //        mapLimbach.itemType = ItemType.item
        //        mapLimbach.description = "A map of the Limbach area."
        //        mapLimbach.rarity = .uncommon
        //        mapLimbach.value = 200
        //
        //        mapNewall.name = "Map of Newall"
        //        mapNewall.id = 92
        //        mapNewall.image = "scrollMap"
        //        mapNewall.useImage = "map2background"
        //        mapNewall.itemType = ItemType.item
        //        mapNewall.description = "A map of the Newall area."
        //        mapNewall.rarity = .uncommon
        //        mapNewall.value = 900
        //
        //        mapWallbach.name = "Map of Wallbach"
        //        mapWallbach.id = 93
        //        mapWallbach.image = "scrollMap"
        //        mapWallbach.useImage = "map3background"
        //        mapWallbach.itemType = ItemType.item
        //        mapWallbach.description = "A map of the Wallbach area."
        //        mapWallbach.rarity = .uncommon
        //        mapWallbach.value = 400
        //
        //        mapDornk.name = "Map of Tadarim"
        //        mapDornk.id = 94
        //        mapDornk.image = "scrollMap"
        //        mapDornk.useImage = "map4background"
        //        mapDornk.itemType = ItemType.item
        //        mapDornk.description = "A map of the Tadarim area."
        //        mapDornk.rarity = .uncommon
        //        mapDornk.value = 700
        //
        //        mapGosmok.name = "Map of Gosmok" // Hidden Oasis
        //        mapGosmok.id = 95
        //        mapGosmok.image = "scrollMap"
        //        mapGosmok.useImage = "map5background"
        //        mapGosmok.itemType = ItemType.item
        //        mapGosmok.description = "A map of the Gosmok area."
        //        mapGosmok.rarity = .epic
        //        mapGosmok.value = 1800
        //
        //        mapMo.name = "Map of the Desert Mo"
        //        mapMo.id = 96
        //        mapMo.image = "scrollMap"
        //        mapMo.useImage = "map6background"
        //        mapMo.itemType = ItemType.item
        //        mapMo.description = "A map of the Gosmok area."
        //        mapMo.rarity = .epic
        //        mapMo.value = 2400
        //
        //        mapRa.name = "Map of the Mountain Ra"
        //        mapRa.id = 97
        //        mapRa.image = "scrollMap"
        //        mapRa.useImage = "map7background"
        //        mapRa.itemType = ItemType.item
        //        mapRa.description = "A map of the Gosmok area."
        //        mapRa.rarity = .epic
        //        mapRa.value = 5000
        //
        //
        //        mapRaPeak.name = "Map of the Mountain Ran Peak"
        //        mapRaPeak.id = 98
        //        mapRaPeak.image = "scrollMap"
        //        mapRaPeak.useImage = "map8background"
        //        mapRaPeak.itemType = ItemType.item
        //        mapRaPeak.description = "A map of the Gosmok area."
        //        mapRaPeak.rarity = .epic
        //        mapRaPeak.value = 10000
        //
        //
        //        mapOfTheStars.name = "Map of the Stars" // Reveals everything
        //        mapOfTheStars.id = 100
        //        mapOfTheStars.image = "scrollMap"
        //        mapOfTheStars.useImage = "map_OfTheStars"
        //        mapOfTheStars.itemType = ItemType.item
        //        mapOfTheStars.description = "A map of that reveals everything."
        //        mapOfTheStars.value = 17000
        //        //   mapOfTheStars.bonusStats = [1,1,1,1,1,1,1]
        //        mapOfTheStars.rarity = .legendary
        
        
        //MARK: StoryScroll
        
        //        var strinzPoolScroll = Item()
        //        strinzPoolScroll.name = "Strinz-Trinitatis area guide"
        //        strinzPoolScroll.id = 101
        //        strinzPoolScroll.image = "scrollMap"
        //        strinzPoolScroll.useImage = "strinzHints1"
        //        strinzPoolScroll.itemType = ItemType.item
        //        strinzPoolScroll.description = "A map of the Strinz-Trinitatis area showing interesting spots."
        //        strinzPoolScroll.rarity = .uncommon
        //        strinzPoolScroll.value = 20
        //        itemArray.append(strinzPoolScroll)
        //
        //        var strinzBasicTips = Item()
        //        strinzBasicTips.name = "Strinz-Trinitatis travel guide"
        //        strinzBasicTips.id = 102
        //        strinzBasicTips.image = "scrollMap"
        //        strinzBasicTips.useImage = "strinzHints2"
        //        strinzBasicTips.itemType = ItemType.item
        //        strinzBasicTips.description = "Read for some basic information on travel around Strinz-Trinitatis"
        //        strinzBasicTips.rarity = .uncommon
        //        strinzBasicTips.value = 20
        //        itemArray.append(strinzBasicTips)
        //
        //
        //        var spiderDenMapStrinz = Item()
        //        spiderDenMapStrinz.name = "Strinz-Trinitatis construction area"
        //        spiderDenMapStrinz.id = 103
        //        spiderDenMapStrinz.image = "scrollMap"
        //        spiderDenMapStrinz.useImage = "strinzHints0"
        //        spiderDenMapStrinz.itemType = ItemType.item
        //        spiderDenMapStrinz.description = "Current constructions around Strinz-Trinitatis"
        //        spiderDenMapStrinz.value = 20
        //        itemArray.append(spiderDenMapStrinz)
        //
        //        var map1backgroundHints0 = Item()
        //        map1backgroundHints0.name = "Limbach travel guide"
        //        map1backgroundHints0.id = 104
        //        map1backgroundHints0.image = "scrollMap"
        //        map1backgroundHints0.useImage = "map1backgroundHints0"
        //        map1backgroundHints0.itemType = ItemType.item
        //        map1backgroundHints0.rarity = .uncommon
        //        map1backgroundHints0.description = "Read for some basic information on travel around Limbach"
        //        map1backgroundHints0.value = 20
        //        itemArray.append(map1backgroundHints0)
        //
        //
        //
        //
        //        //MARK: SpellBooks
        //        var bookMinorHeal = Item()
        //        bookMinorHeal.name = "Book of Minor Heal"
        //        bookMinorHeal.id = 200
        //        bookMinorHeal.image = "BookOfMinorHealing"
        //        bookMinorHeal.itemType = ItemType.item
        //        bookMinorHeal.requiredClass = [CharClass.priest]
        //        bookMinorHeal.description = "Book that includes basic healing spells."
        //        bookMinorHeal.value = 20
        //        bookMinorHeal.abilities = [5,16]
        //        itemArray.append(bookMinorHeal)
        //
        //        var bookMagicSpark = Item()
        //        bookMagicSpark.name = "Book of Magic Spark"
        //        bookMagicSpark.id = 201
        //        bookMagicSpark.image = "BookOfMagicSpark"
        //        bookMagicSpark.itemType = ItemType.item
        //        bookMagicSpark.requiredClass = [CharClass.mage]
        //        bookMagicSpark.description = "Allows mages to cast Magic Spark."
        //        bookMagicSpark.value = 20
        //        bookMagicSpark.abilities = [6]
        //        itemArray.append(bookMagicSpark)
        //
        //        var bookOfFireMagic = Item()
        //        bookOfFireMagic.name = "Book of Fireball"
        //        bookOfFireMagic.id = 202
        //        bookOfFireMagic.image = "BookOfFireball"
        //        bookOfFireMagic.itemType = ItemType.item
        //        bookOfFireMagic.requiredClass = [CharClass.mage]
        //        bookOfFireMagic.description = "Contains the powerful Fireball spell."
        //        bookOfFireMagic.value = 200
        //        bookOfFireMagic.rarity = .rare
        //        bookOfFireMagic.abilities = [17] // only 17
        //        itemArray.append(bookOfFireMagic)
        //
        //
        //        var bookMajorHeal = Item()
        //        bookMajorHeal.name = "Book of Major Heal"
        //        bookMajorHeal.id = 203
        //        bookMajorHeal.image = "BookOfMajorHealing"
        //        bookMajorHeal.itemType = ItemType.item
        //        bookMajorHeal.requiredClass = [CharClass.priest]
        //        bookMajorHeal.description = "Book that includes major healing spells."
        //        bookMajorHeal.value = 60
        //        bookMajorHeal.abilities = [23,22]
        //        itemArray.append(bookMajorHeal)
        //
        //
        //        var bonFire = Item()
        //        bonFire.name = "Bonfire"
        //        bonFire.id = 204
        //        bonFire.image = "bonfire"
        //        bonFire.itemType = ItemType.item
        //        bonFire.requiredClass = [CharClass.ranger]
        //        bonFire.description = "Allows a ranger to set up a camp to heal the party."
        //        bonFire.value = 50
        //        itemArray.append(bonFire)
        //
        //
        //        var bookOfMindblast = Item()
        //        bookOfMindblast.name = "Book of Mindblast"
        //        bookOfMindblast.id = 205
        //        bookOfMindblast.image = "BookOfMindblast"
        //        bookOfMindblast.itemType = ItemType.item
        //        bookOfMindblast.requiredClass = [CharClass.mage]
        //        bookOfMindblast.description = "Contains the powerful Mindblast spell."
        //        bookOfMindblast.value = 200
        //        bookOfMindblast.rarity = .rare
        //        bookOfMindblast.abilities = [25] // only 17
        //        itemArray.append(bookOfMindblast)
        //
        //
        //        //MARK: QuestItems
        //
        //
        //        bridgepass.name = "Wolf Emblem"
        //        bridgepass.id = 999
        //        bridgepass.value = 0
        //        bridgepass.description = "City Pass for Strinz-Trinitatis."
        //        bridgepass.rarity = ItemRarity.legendary
        //        bridgepass.image = "Badge23.png"
        //        bridgepass.itemType = ItemType.questItem
        //        bridgepass.requiredRace = []
        //        bridgepass.requiredClass = []
        //
        //
        //
        //
        //        spiderhead.name = "Dead Spider Head"
        //        spiderhead.id = 1000
        //        spiderhead.image = "Badge26"
        //        spiderhead.itemType = ItemType.loot
        //        spiderhead.rarity = ItemRarity.legendary
        //        spiderhead.description = "The head of the dead king spider."
        //        spiderhead.value = 200
        //
        //
        //        var medusaHead = Item()
        //        medusaHead.name = "The Head of Medusa"
        //        medusaHead.id = 1001
        //        medusaHead.image = "medusaHead"
        //        medusaHead.itemType = ItemType.loot
        //        medusaHead.rarity = ItemRarity.legendary
        //        medusaHead.description = "The head of the Medusa, Queen of Snakes."
        //        medusaHead.value = 600
        //
        //        itemArray.append(medusaHead)
        //
        //        var elvenCrown = Item()
        //        elvenCrown.name = "Elven King Crown"
        //        elvenCrown.id = 1002
        //        elvenCrown.value = 1200
        //        elvenCrown.description = "The crown of Kavzantha, King of the Elves."
        //        elvenCrown.rarity = ItemRarity.legendary
        //        elvenCrown.image = "ElvenCrown.png"
        //        elvenCrown.itemType = ItemType.questItem
        //        elvenCrown.requiredRace = [CharRace.elf]
        //        elvenCrown.bonusStats = [0,0,0,2,2,2,5]
        //
        //        itemArray.append(elvenCrown)
        //
        //        // LOOT
        //
        //
        //        var snakeSkinGreen = Item()
        //        snakeSkinGreen.name = "Green Snake Skin"
        //        snakeSkinGreen.id = 2000
        //        snakeSkinGreen.image = "snakeskingreen"
        //        snakeSkinGreen.itemType = ItemType.loot
        //        snakeSkinGreen.rarity = ItemRarity.common
        //        snakeSkinGreen.description = "Skin of a snake."
        //        snakeSkinGreen.value = 30
        //        itemArray.append(snakeSkinGreen)
        //
        //
        //        var snakeSkinRed = Item()
        //        snakeSkinRed.name = "Red Snake Skin"
        //        snakeSkinRed.id = 2001
        //        snakeSkinRed.image = "snakeskinred"
        //        snakeSkinRed.itemType = ItemType.loot
        //        snakeSkinRed.rarity = ItemRarity.common
        //        snakeSkinRed.description = "Skin of a snake."
        //        snakeSkinRed.value = 150
        //        itemArray.append(snakeSkinRed)
        //
        //
        //        var snakeSkinBlue = Item()
        //        snakeSkinBlue.name = "Blue Snake Skin"
        //        snakeSkinBlue.id = 2002
        //        snakeSkinBlue.image = "snakeskinblue"
        //        snakeSkinBlue.itemType = ItemType.loot
        //        snakeSkinBlue.rarity = ItemRarity.common
        //        snakeSkinBlue.description = "Skin of a snake."
        //        snakeSkinBlue.value = 300
        //        itemArray.append(snakeSkinBlue)
        //
        //        var foxFur = Item()
        //        foxFur.name = "Fox Fur"
        //        foxFur.id = 2003
        //        foxFur.image = "foxfur"
        //        foxFur.itemType = ItemType.loot
        //        foxFur.rarity = ItemRarity.common
        //        foxFur.description = "Fur of a fox."
        //        foxFur.value = 300
        //        itemArray.append(foxFur)
        //
        //
        //        var OrbOfRestoring = Item()
        //        OrbOfRestoring.name = "Orb of Restoration"
        //        OrbOfRestoring.id = 3000
        //        OrbOfRestoring.image = "orbofregeneration"
        //        OrbOfRestoring.itemType = ItemType.item
        //        OrbOfRestoring.rarity = ItemRarity.legendary
        //        OrbOfRestoring.description = "A legendary orb that will revive and restore the whole party."
        //        OrbOfRestoring.value = 2000
        //        itemArray.append(OrbOfRestoring)
        //
        //        var townportalscroll = Item()
        //        townportalscroll.name = "Town Portal Scroll"
        //        townportalscroll.id = 3001
        //        townportalscroll.image = "townportalscroll"
        //        townportalscroll.itemType = ItemType.item
        //        townportalscroll.rarity = ItemRarity.common
        //        townportalscroll.description = "Allows a magic user to teleport to the nearest town."
        //        townportalscroll.value = 100
        //        townportalscroll.requiredClass = [CharClass.priest, CharClass.mage]
        //        itemArray.append(townportalscroll)
        //
        //        var townportal1 = Item()
        //        townportal1.name = "Town Portal to Strinz-Trinitatis"
        //        townportal1.id = 3002
        //        townportal1.image = "townportal0"
        //        townportal1.itemType = ItemType.item
        //        townportal1.rarity = ItemRarity.common
        //        townportal1.description = "Allows a magic user to teleport to Strinz-Trinitatis."
        //        townportal1.value = 100
        //        townportal1.requiredClass = [CharClass.priest, CharClass.mage]
        //        itemArray.append(townportal1)
        //
        //        var townportal2 = Item()
        //        townportal2.name = "Town Portal to Limbach"
        //        townportal2.id = 3003
        //        townportal2.image = "townportal1"
        //        townportal2.itemType = ItemType.item
        //        townportal2.rarity = ItemRarity.common
        //        townportal2.description = "Allows a magic user to teleport to Stinz-Trinitatis."
        //        townportal2.value = 100
        //        townportal2.requiredClass = [CharClass.priest, CharClass.mage]
        //        itemArray.append(townportal2)
        //
        //
        //        var townportal3 = Item()
        //        townportal3.name = "Town Portal to Newall"
        //        townportal3.id = 3004
        //        townportal3.image = "townportal2"
        //        townportal3.itemType = ItemType.item
        //        townportal3.rarity = ItemRarity.common
        //        townportal3.description = "Allows a magic user to teleport to Newall."
        //        townportal3.value = 100
        //        townportal3.requiredClass = [CharClass.priest, CharClass.mage]
        //        itemArray.append(townportal3)
        //
        //
        //        var townportal4 = Item()
        //        townportal4.name = "Town Portal to Wallbach"
        //        townportal4.id = 3005
        //        townportal4.image = "townportal3"
        //        townportal4.itemType = ItemType.item
        //        townportal4.rarity = ItemRarity.common
        //        townportal4.description = "Allows a magic user to teleport to Wallbach."
        //        townportal4.value = 100
        //        townportal4.requiredClass = [CharClass.priest, CharClass.mage]
        //        itemArray.append(townportal4)
        //
        //
        //        var townportal5 = Item()
        //        townportal5.name = "Town Portal to Tadarim"
        //        townportal5.id = 3006
        //        townportal5.image = "townportal4"
        //        townportal5.itemType = ItemType.item
        //        townportal5.rarity = ItemRarity.common
        //        townportal5.description = "Allows a magic user to teleport to Tadarim."
        //        townportal5.value = 100
        //        townportal5.requiredClass = [CharClass.priest, CharClass.mage]
        //        itemArray.append(townportal5)
        //
        //        var townportal6 = Item()
        //        townportal6.name = "Town Portal to Gosmok"
        //        townportal6.id = 3007
        //        townportal6.image = "townportal5"
        //        townportal6.itemType = ItemType.item
        //        townportal6.rarity = ItemRarity.common
        //        townportal6.description = "Allows a magic user to teleport to Gosmok."
        //        townportal6.value = 100
        //        townportal6.requiredClass = [CharClass.priest, CharClass.mage]
        //        itemArray.append(townportal6)
        
        
        
        
        
        
        return itemArray
    }
    
    func fetchItemsWith(idArray: [Int]) -> [Item] {
        var result: [Item] = []
        
        for id in idArray {
            let searchItem = staticItems.filter{$0.id == id}.first
            if let item = searchItem  {
                result.append(item)
            }
        }
        
        return result
    }
    
    
    
    struct Item:  Codable {
        var id: Int?
        var name: String = ""
        var description: String = ""
        var itemType: ItemType = .weapon
        var rarity: ItemRarity = .common
        var image: String = ""
        var value: Int = 10
        var requiredRace: [CharRace] = [CharRace.all]
        var requiredClass: [CharClass] = [CharClass.all]
        var requiredGender: [CharGender] = [CharGender.all]
        var statsBonus: [Int] = [0,0,0,0,0,0,0]
        var damageBonus: Int = 0
        var damageType: DamageType = DamageType.neutral
        var armorBonus: Int = 0
        var abilities: [Int] = [0]
        
        init(id: Int, name: String, description: String, type: ItemType, image: String, value: Int) {
            self.id = id
            self.name = name
            self.description = description
            self.itemType = type
            self.image = image
            self.value = value
        }
    }
    
    
    
    enum ItemType: Int, Codable {
        
        case aura, helmet, necklace, weapon, armor, shield, arrow, ring, boots, item, questItem, loot
        
        var title: String {
            switch self {
            case .aura: return "aura"
            case .helmet: return "helmet"
            case .necklace: return "necklace"
            case .weapon: return "weapon"
            case .armor: return "armor"
            case .shield: return "shield"
            case .arrow: return "arrow"
            case .ring: return "ring"
            case .boots: return "boots"
            case .item: return "item"
            case .questItem: return "quest item"
            case .loot: return "loot"
                
            }
        }
    }
    
    enum ItemRarity: Int, Codable {
        
        case common, uncommon, rare, epic, legendary
        
        var title: String {
            switch self {
            case .common: return "common"
            case .uncommon: return "uncommon"
            case .rare: return "rare"
            case .epic: return "epic"
            case .legendary: return "legendary"
            }
        }
    }
    
    enum DamageType: Int, Codable {
        
        case neutral, water, fire, nature, lightning, holy, death
        
        var title: String {
            switch self {
            case .neutral: return "neutral"
            case .water: return "water"
            case .fire: return "fire"
            case .nature: return "nature"
            case .lightning: return "lightning"
            case .holy: return "holy"
            case .death: return "death"
            }
        }
    }
    
    
    
}

