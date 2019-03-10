//
//  StoreHouseChanges.swift
//  GildedRoseKata
//
//  Created by Daniela Banica on 10/03/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import Foundation

struct StoreHouse {
    static func getChanges(_ item: Item) -> ProductChanges {
        
        switch item.name{
        case "Aged Brie":
            return AgedBrie()
        case "Backstage passes to a TAFKAL80ETC concert":
            return Backstage()
        case "Conjured Mana Cake":
            return Conjured()
        case "Sulfuras, Hand of Ragnaros":
            return Sulfuras()
        default:
            return ProductChanges()
        }
        
    }
}
