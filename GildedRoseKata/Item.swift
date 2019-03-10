//
//  Item.swift
//  GildedRoseKata
//
//  Created by Daniela Banica on 10/03/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import Foundation

public class Item {
    public var name: String
    public var sellIn: Int
    public var quality: Int
    
    public init(name: String, sellIn: Int, quality: Int){
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
}
    
    extension Item: CustomStringConvertible {
        public var description: String {
            return self.name + " , " + String(self.sellIn) + " , " + String(self.quality)
    }
}
    



