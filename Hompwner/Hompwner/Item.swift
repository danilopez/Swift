//
//  Item.swift
//  Hompwner
//
//  Created by Daniel López on 8/6/14.
//  Copyright (c) 2014 Daniel López. All rights reserved.
//

import Foundation

class Item : NSObject {
	var itemName: String?
	var serialNumber: String?
	var valueInDollars: Int?
	var dateCreated: NSDate?
	
	init(name:String, valueInDollars:Int, serialNumber:String) {
		super.init()
		self.itemName = name
		self.serialNumber = serialNumber
		self.valueInDollars = valueInDollars
		dateCreated = NSDate.date()
		
		println("Item created: \(self.description)")
	}
	
	convenience init() {
		self.init(name:"Item", valueInDollars:0, serialNumber:"")
	}
	
	class func randomItem() -> Item {
		let randomAdjectiveList = ["💩", "💦", "💨"]
		let randomNounList = ["🐻", "🐷", "🐤"]
		
		let randomAdjectiveListIndex = Int(arc4random()) % randomAdjectiveList.count
		let randomNounListIndex = Int(arc4random()) % randomNounList.count
		
		let randomName = "\(randomNounList[randomNounListIndex]) \(randomAdjectiveList[randomAdjectiveListIndex])"
		
		let randomValue = Int(arc4random()) % 1000
		
		let serialNumber = "AA000"
		var newSerialNumber:String = ""
		for utf8character in serialNumber.utf8 {
			var characterResult = 0
			var thisChar:String?
			if Int(utf8character) == 65 {
				thisChar = String().bridgeToObjectiveC().stringByAppendingFormat("%C",((Int(utf8character) + Int(arc4random()) % 26)))
			} else {
				thisChar = String().bridgeToObjectiveC().stringByAppendingFormat("%C",((Int(utf8character) + Int(arc4random()) % 10)))
			}
			newSerialNumber += thisChar!
		}
		
		var newItem = Item(name:randomName, valueInDollars:randomValue, serialNumber:newSerialNumber)
		
		return newItem
	}
	
	
	func description() -> String {
		return "\(itemName) (\(serialNumber)): Worth $\(valueInDollars), recorded on \(dateCreated)"
	}
}