//
//  ConjuredItem.swift
//  GildedRose
//
//  Created by Achraf TRABELSI on 12/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import Foundation

public class ConjuredItem: ItemCalculator {
    func updateItem(_ item: Item) -> Item {
        var quality = sellInIsNotPassed(item) ? item.quality - 2 : item.quality - 4
        
        if isQualityNegative(quality) {
            quality = 0
        }
        
        return Item(name: item.name, sellIn: item.sellIn - 1, quality: quality)
    }
    
    private func isQualityNegative(_ quality: Int) -> Bool {
        return quality < 0
    }
    
    private func sellInIsNotPassed(_ item: Item) -> Bool {
        return item.sellIn > -1
    }
}
