//
//  Conjured.swift
//  GildedRoseKata
//
//  Created by Daniela Banica on 10/03/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import Foundation


class Conjured: ProductChanges {
    
    override func updateDailyQuality(_ item: Item) {
        setQuality(item, quality: item.quality - 2)
    }
    
    override func processExpiredProduct(_ item: Item) {
        guard item.sellIn < 0 else {
            return
        }
        setQuality(item, quality: item.quality - 4)
    }
}
