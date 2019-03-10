//
//  Backstage.swift
//  GildedRoseKata
//
//  Created by Daniela Banica on 10/03/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import Foundation

class Backstage: ProductChanges {
    
    override func updateDailyQuality(_ item: Item) {
        let qualityIncrese: Int
        switch item.sellIn {
        case 0..<6:
            qualityIncrese = 3
        case 6..<11:
            qualityIncrese = 2
        default:
            qualityIncrese = 1
        }
        setQuality(item, quality: item.quality + qualityIncrese)
    }
    
    
    override func processExpiredProduct(_ item: Item) {
        guard item.sellIn < 0 else {
            return
        }
        setQuality(item, quality: 0)
    }
}
