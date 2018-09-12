//
//  BackstagePassItem.swift
//  GildedRose
//
//  Created by Achraf TRABELSI on 12/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import Foundation

public class BackstagePassItem: ItemCalculator {
    func updateItem(_ item: Item) -> Item {
        
        var quality: Int
        
        if sellInIsPassed(item) {
            quality = 0
        } else if sellInIsInFiveOrLessDays(item) {
            quality = item.quality + 3
        } else if sellInIsInTenOrLessDays(item) {
            quality = item.quality + 2
        } else {
            quality = item.quality + 1
        }
        
        if isQualityGreaterThanFifty(quality) {
            quality = 50
        }
        
        return Item(name: item.name, sellIn: item.sellIn - 1, quality: quality)
    }
    
    private func sellInIsPassed(_ item: Item) -> Bool {
        return item.sellIn < 1
    }
    
    private func sellInIsInTenOrLessDays(_ item: Item) -> Bool {
        return item.sellIn < 11
    }
    
    private func sellInIsInFiveOrLessDays(_ item: Item) -> Bool {
        return item.sellIn < 6
    }
    
    private func isQualityGreaterThanFifty(_ quality: Int) -> Bool {
        return quality > 50
    }
}
