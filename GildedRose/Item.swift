//
//  Item.swift
//  GildedRose
//
//  Created by Achraf TRABELSI on 12/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

public class Item {
    public var name: String
    public var sellIn: Int
    public var quality: Int
    
    public init(name: String, sellIn: Int, quality: Int) {
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
}

extension Item: CustomStringConvertible {
    public var description: String {
        return self.name + ", " + String(self.sellIn) + ", " + String(self.quality)
    }
}
