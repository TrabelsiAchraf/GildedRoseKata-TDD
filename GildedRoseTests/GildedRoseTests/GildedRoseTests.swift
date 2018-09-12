@testable import GildedRose
import XCTest

class GildedRoseTests: XCTestCase {
    
     // MARK: Aged Brie Item
    
    func test_update_quality_for_AgedBrie_item_then_the_quality_should_increase_and_sellIn_decrease() {
        let items = [Item(name: "Aged Brie", sellIn: 5, quality: 7)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Aged Brie", app.items[0].name)
        XCTAssertEqual(8, app.items[0].quality)
        XCTAssertEqual(4, app.items[0].sellIn)
    }
    
    func test_update_quality_for_AgedBrie_at_max_quality_50_then_the_quality_should_stay_the_same_and_sellIn_decrease() {
        let items = [Item(name: "Aged Brie", sellIn: 5, quality: 50)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Aged Brie", app.items[0].name)
        XCTAssertEqual(50, app.items[0].quality)
        XCTAssertEqual(4, app.items[0].sellIn)
    }
    
    func test_update_quality_for_AgedBrie_at_max_quality_50_and_onSellDate_then_the_quality_should_stay_the_same_and_sellIn_decrease() {
        let items = [Item(name: "Aged Brie", sellIn: 0, quality: 50)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Aged Brie", app.items[0].name)
        XCTAssertEqual(50, app.items[0].quality)
        XCTAssertEqual(-1, app.items[0].sellIn)
    }
    
    func test_update_quality_for_AgedBrie_onSellDate_then_the_quality_should_increase_twice_and_sellIn_decrease() {
        let items = [Item(name: "Aged Brie", sellIn: 0, quality: 6)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Aged Brie", app.items[0].name)
        XCTAssertEqual(8, app.items[0].quality)
        XCTAssertEqual(-1, app.items[0].sellIn)
    }
    
    func test_update_quality_for_AgedBrie_after_SellDate_then_the_quality_should_increase_twice_and_sellIn_decrease() {
        let items = [Item(name: "Aged Brie", sellIn: -3, quality: 8)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Aged Brie", app.items[0].name)
        XCTAssertEqual(10, app.items[0].quality)
        XCTAssertEqual(-4, app.items[0].sellIn)
    }
    
    // MARK: Sulfuras Item
    
    func test_update_quality_for_Sulfuras_item_then_the_quality_and_sellIn_should_stay_the_same() {
        let items = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 5, quality: 7)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Sulfuras, Hand of Ragnaros", app.items[0].name)
        XCTAssertEqual(7, app.items[0].quality)
        XCTAssertEqual(5, app.items[0].sellIn)
    }
    
    func test_update_quality_for_Sulfuras_at_max_quality_50_then_the_quality_and_sellIn_should_stay_same() {
        let items = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 5, quality: 50)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Sulfuras, Hand of Ragnaros", app.items[0].name)
        XCTAssertEqual(50, app.items[0].quality)
        XCTAssertEqual(5, app.items[0].sellIn)
    }
    
    func test_update_quality_for_Sulfuras_at_max_quality_50_and_onSellDate_then_the_quality_and_sellIn_should_stay_the_same() {
        let items = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 50)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Sulfuras, Hand of Ragnaros", app.items[0].name)
        XCTAssertEqual(50, app.items[0].quality)
        XCTAssertEqual(0, app.items[0].sellIn)
    }
    
    func test_update_quality_for_Sulfuras_onSellDate_then_the_quality_and_sellIn_should_stay_the_same() {
        let items = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 6)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Sulfuras, Hand of Ragnaros", app.items[0].name)
        XCTAssertEqual(6, app.items[0].quality)
        XCTAssertEqual(0, app.items[0].sellIn)
    }
    
    func test_update_quality_for_Sulfuras_after_SellDate_then_the_quality_and_sellIn_should_stay_the_same() {
        let items = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: -3, quality: 8)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Sulfuras, Hand of Ragnaros", app.items[0].name)
        XCTAssertEqual(8, app.items[0].quality)
        XCTAssertEqual(-3, app.items[0].sellIn)
    }
    
    // MARK: Normal Item
    
    func test_update_quality_for_normal_item_then_the_quality_and_sellIn_should_decrease() {
        let items = [Item(name: "TA", sellIn: 5, quality: 7)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("TA", app.items[0].name)
        XCTAssertEqual(6, app.items[0].quality)
        XCTAssertEqual(4, app.items[0].sellIn)
    }
    
    func test_update_quality_for_normal_at_max_quality_50_then_the_quality_and_sellIn_should_decrease() {
        let items = [Item(name: "TA", sellIn: 5, quality: 50)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("TA", app.items[0].name)
        XCTAssertEqual(49, app.items[0].quality)
        XCTAssertEqual(4, app.items[0].sellIn)
    }
    
    func test_update_quality_for_normal_at_max_quality_50_and_onSellDate_then_the_quality_and_sellIn_should_decrease() {
        let items = [Item(name: "TA", sellIn: 0, quality: 50)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("TA", app.items[0].name)
        XCTAssertEqual(49, app.items[0].quality)
        XCTAssertEqual(-1, app.items[0].sellIn)
    }
    
    func test_update_quality_for_normal_onSellDate_then_the_quality_and_sellIn_should_decrease() {
        let items = [Item(name: "TA", sellIn: 0, quality: 6)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("TA", app.items[0].name)
        XCTAssertEqual(5, app.items[0].quality)
        XCTAssertEqual(-1, app.items[0].sellIn)
    }
    
    func test_update_quality_for_normal_after_SellDate_then_the_quality_should_decrease_twice_and_sellIn_decrease() {
        let items = [Item(name: "TA", sellIn: -3, quality: 8)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("TA", app.items[0].name)
        XCTAssertEqual(6, app.items[0].quality)
        XCTAssertEqual(-4, app.items[0].sellIn)
    }
    
    // MARK: Conjured Item
    
    func test_update_quality_for_Conjured_item_then_the_quality_and_sellIn_should_decrease() {
        let items = [Item(name: "Conjured", sellIn: 5, quality: 7)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Conjured", app.items[0].name)
        XCTAssertEqual(5, app.items[0].quality)
        XCTAssertEqual(4, app.items[0].sellIn)
    }
    
    func test_update_quality_for_Conjured_onSellDate_then_the_quality_should_increase_twice_and_sellIn_decrease() {
        let items = [Item(name: "Conjured", sellIn: 0, quality: 5)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Conjured", app.items[0].name)
        XCTAssertEqual(3, app.items[0].quality)
        XCTAssertEqual(-1, app.items[0].sellIn)
    }
    
    func test_update_quality_for_Conjured_after_SellDate_then_the_quality_should_decrease_and_sellIn_decrease() {
        let items = [Item(name: "Conjured", sellIn: -1, quality: 5)]
        let app = GildedRose(items: items)
        app.updateQuality()
        XCTAssertEqual("Conjured", app.items[0].name)
        XCTAssertEqual(1, app.items[0].quality)
        XCTAssertEqual(-2, app.items[0].sellIn)
    }
}
