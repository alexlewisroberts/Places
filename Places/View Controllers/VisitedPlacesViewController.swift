//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Alex Roberts on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlacesTableViewControllerDelegate {
	
	// MARK
	
	func placeWasSelected(place: Place) {
		mapViewController.location = place.location
	}
	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let tableVC = segue.destination as? PlacesTableViewController {
			placesTableViewController = tableVC
			placesTableViewController.delegate = self
		}
		
		if let vc = segue.destination as? PlacesPresenter {
			vc.placeController = placeController
		}
		if let mapVC = segue.destination as? MapViewController {
			mapViewController = mapVC
		}
    }
	
	var placeController: PlaceController?
	
	var mapViewController: MapViewController!
	var placesTableViewController: PlacesTableViewController!

}
