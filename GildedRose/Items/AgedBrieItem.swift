//
//  AgedBrieItem.swift
//  GildedRose
//
//  Created by Achraf TRABELSI on 12/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import Foundation

public class AgedBrieItem: ItemCalculator {
    func updateItem(_ item: Item) -> Item {
        var quality = sellInIsPassed(item) ? item.quality + 2 : item.quality + 1
        
        if isQualityGreaterThanFifty(quality) {
            quality = 50
        }
        
        return Item(name: item.name, sellIn: item.sellIn - 1, quality: quality)
    }
    
    private func sellInIsPassed(_ item: Item) -> Bool {
        return item.sellIn < 1
    }
    
    private func isQualityGreaterThanFifty(_ quality: Int) -> Bool {
        return quality > 50
    }
}
