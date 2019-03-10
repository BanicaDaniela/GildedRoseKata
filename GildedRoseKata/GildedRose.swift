//
//  GildedRose.swift
//  GildedRoseKata
//
//  Created by Daniela Banica on 10/03/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import Foundation

public class GildedRose {
    var items: [Item]
    
    required public init (items: [Item]){
        self.items = items
    }
  
    public func updateQuality(){

        let _ = items.map { item in
            let itemChanges = StoreHouse.getChanges(item)
            itemChanges.updateDailyQuality(item)
            itemChanges.expireDate(item)
            itemChanges.processExpiredProduct(item)
        }
    
    }
    
}


