//
//  ViewController.swift
//  MyPlaces
//
//  Created by Roman Melnik on 18.02.2020.
//  Copyright © 2020 Roman Melnik. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1 // default
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }


//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }
    
    
    
}

