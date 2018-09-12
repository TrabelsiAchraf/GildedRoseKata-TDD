//
//  GildedRose.swift
//  GildedRose
//
//  Created by Achraf TRABELSI on 12/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

public class GildedRose {
    
    private static let itemCalculatorDictionnary : Dictionary =
        ["Aged Brie": AgedBrieItem(),
         "Sulfuras, Hand of Ragnaros": SulfurasItem(),
         "Backstage passes to a TAFKAL80ETC concert": BackstagePassItem(),
         "Conjured": ConjuredItem()] as [String : Any]
    
    var items: [Item]
    
    required public init(items: [Item]) {
        self.items = items
    }
    
    public func updateQuality() {
        for i in 0..<items.count {
            let itemCalculator = GildedRose.itemCalculatorDictionnary.get(key: items[i].name , defaultValue: NormalItem()) as! ItemCalculator
            items[i] = itemCalculator.updateItem(items[i])
        }
    }
}

extension Dictionary {
    // Returns the value for the given key (if exists), otherwise returns the default value.
    func get(key: Key, defaultValue: Value) -> Value {
        if let value = self[key] {
            return value
        } else {
            return defaultValue
        }
    }
}

