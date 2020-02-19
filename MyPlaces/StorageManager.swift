//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Roman Melnik on 19.02.2020.
//  Copyright © 2020 Roman Melnik. All rights reserved.
//

import RealmSwift

let realm: Realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
}
