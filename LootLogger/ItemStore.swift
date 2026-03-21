//
//  ItemStore.swift
//  LootLogger
//
//  Created by Gabes mac on 3/20/26.
//
import UIKit

class ItemStore {
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.firstIndex(of: item) {
            allItems.remove(at: index)
        }
    }
    
//    init() {
//        for _ in 0..<50 {
//            createItem()
//        }
//    }
}
