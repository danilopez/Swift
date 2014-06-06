//
//  ViewController.swift
//  Whereami
//
//  Created by Daniel López on 6/6/14.
//  Copyright (c) 2014 Daniel López. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
	var locationManager: CLLocationManager!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		locationManager = CLLocationManager()
		locationManager.delegate = self
		locationManager.desiredAccuracy = kCLLocationAccuracyBest
		locationManager.requestAlwaysAuthorization()
		locationManager.startUpdatingLocation()

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	//#pragma mark - CLLocationManagerDelegate
	func locationManager(manager: CLLocationManager!, didUpdateLocations locations: AnyObject[]!) {
		println("Locations: \(locations)")
	}
	
	deinit {
		locationManager.delegate = nil
	}

}

