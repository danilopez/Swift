//
//  ItemsViewController.swift
//  Hompwner
//
//  Created by Daniel López on 8/6/14.
//  Copyright (c) 2014 Daniel López. All rights reserved.
//

import UIKit

class ItemsViewController : UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		for item in 0..5 {
			ItemStore.sharedStore().createItem()
		}
	}
	
	override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return ItemStore.sharedStore().allItems.count
	}
	
	override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell") as UITableViewCell
		
		if cell != nil {
			cell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"UITableViewCell")
		}
		
		let item = ItemStore.sharedStore().allItems[indexPath.row]
		
		cell.textLabel.text = item.description()
		
		return cell
	}
}