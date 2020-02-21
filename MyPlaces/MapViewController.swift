//
//  MapViewController.swift
//  MyPlaces
//
//  Created by Roman Melnik on 21.02.2020.
//  Copyright © 2020 Roman Melnik. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closeVC() {
        dismiss(animated: true)
    }
}
