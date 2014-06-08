//
//  ItemStore.swift
//  Hompwner
//
//  Created by Daniel López on 8/6/14.
//  Copyright (c) 2014 Daniel López. All rights reserved.
//

import Foundation

class ItemStore : NSObject {
	var allItems:Item[]
	
	class func sharedStore() -> ItemStore! {
		struct sharedStore {
			static var instance: ItemStore? = nil
			static var onceToken: dispatch_once_t = 0
		}
		
		dispatch_once(&sharedStore.onceToken) {
			sharedStore.instance = self()
		}
		
		return sharedStore.instance!
	}
	
	@required init() {
		allItems = []
	}
	
	func createItem() -> Item {
		let newItem = Item.randomItem()
		allItems.append(newItem)
		return newItem
	}
}