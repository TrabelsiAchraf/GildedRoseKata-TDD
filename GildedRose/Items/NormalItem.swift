//
//  NormalItem.swift
//  GildedRose
//
//  Created by Achraf TRABELSI on 12/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import Foundation

public class NormalItem: ItemCalculator {
    func updateItem(_ item: Item) -> Item {
        var newQuality = sellInNotPassed(item) ? item.quality - 1 : item.quality - 2
        
        if isQualityNegative(newQuality) {
            newQuality = 0
        }
        
        return Item(name: item.name, sellIn: item.sellIn - 1, quality: newQuality)
    }
    
    private func sellInNotPassed(_ item: Item) -> Bool {
        return item.sellIn > -1
    }
    
    private func isQualityNegative(_ quality: Int) -> Bool {
        return quality < 0
    }
}
