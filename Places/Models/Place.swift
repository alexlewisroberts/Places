//
//  Place.swift
//  Places
//
//  Created by Alex Roberts on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

struct Place {
	
	var name: String
	var location: (latitude: Double, longitude: Double)
	
	init(name: String, latitude: Double, longitude: Double) {
		self.name = name
		self.location = (latitude: latitude, longitude: longitude)
	}
	
}
