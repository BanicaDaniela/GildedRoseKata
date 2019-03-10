//
//  AgedBrieTests.swift
//  GildedRoseKataTests
//
//  Created by Daniela Banica on 10/03/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import XCTest
@testable import GildedRoseKata

class AgedBrieTests: XCTestCase {
    
    func testQualityIncreseInTime(){
        let item1 = Item(name: "Aged Brie", sellIn: 1, quality: 0)
        let change = AgedBrie()
        change.updateDailyQuality(item1)
        XCTAssertEqual(1,item1.quality)
        
    }
   
    func testExpiredCheeseIsBetter() {
        let item2 = Item(name: "Aged Brie", sellIn: -5, quality: 10)
        let change = AgedBrie()
        change.processExpiredProduct(item2)
        XCTAssertEqual(11, item2.quality)
   
}
    
    
}
