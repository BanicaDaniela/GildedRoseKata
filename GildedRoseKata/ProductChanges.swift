//
//  ProductChanges.swift
//  GildedRoseKata
//
//  Created by Daniela Banica on 10/03/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import Foundation

class ProductChanges {
    
    func updateDailyQuality(_ item: Item) {
        setQuality(item, quality: item.quality - 1)
    }
    
    func setQuality(_ item: Item, quality: Int){
        guard quality >= 0 else {
            item.quality = 0
            return
        }
        
        guard quality <= 50 else {
            item.quality = 50
            return
        }
        item.quality = quality
        
    }
    
    func expireDate(_ item: Item) {
        
        item.sellIn = item.sellIn - 1
    }
    
    func processExpiredProduct(_ item: Item){
        guard item.sellIn < 0 else {
            return
        }
        setQuality(item, quality: item.quality - 1)
    }
    
    
    
    
    
    
    
    
    
    
    
}
