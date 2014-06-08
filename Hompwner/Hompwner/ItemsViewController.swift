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
}