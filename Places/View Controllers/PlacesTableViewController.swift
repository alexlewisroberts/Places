//
//  PlacesTableViewController.swift
//  Places
//
//  Created by Alex Roberts on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

protocol PlacesTableViewControllerDelegate: class {
	func placeWasSelected(place: Place)
}

class PlacesTableViewController: UITableViewController, PlacesPresenter {

	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		tableView.reloadData()
	}

	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		guard let place = placeController?.places[indexPath.row] else { return }
		
		delegate?.placeWasSelected(place: place)
	}
	
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return placeController?.places.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)

		let place = placeController?.places[indexPath.row]
		cell.textLabel?.text = place?.name
		
        return cell
    }


	// MARK: - Properties

	weak var delegate: PlacesTableViewControllerDelegate?
var placeController: PlaceController? {
	didSet {
		tableView.reloadData()
		}
	}
}
