//
//  ConjuredProductsTests.swift
//  GildedRoseKataTests
//
//  Created by Daniela Banica on 11/03/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import XCTest
@testable import GildedRoseKata

class ConjuredProductsTests: XCTestCase {
    
    func testConjuredItemsDegradeTwiceAsFastPreExpiry() {
        let item = Item(name: "Conjured Mana Cake", sellIn: 3, quality: 6)
        let behaviour = Conjured()
        behaviour.updateDailyQuality(item)
        XCTAssertEqual(4, item.quality)
    
}
    func testConjuredItemsDegradeTwiceAsFastPostExpiry() {
        let item = Item(name: "Conjured Mana Cake", sellIn: -3, quality: 6)
        let behaviour = Conjured()
        behaviour.processExpiredProduct(item)
        XCTAssertEqual(2, item.quality)
    }
    
    
    
}
