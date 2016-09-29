//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Bejan Fozdar on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation




class Coordinate {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
    var isNorthernHemisphere: Bool {
        return latitude > 0
    }
    var isSouthernHemisphere: Bool {
        return latitude < 0
    }
    var isWesternHemisphere: Bool {
        return longitude > 0
    }
    var isEasternHemisphere: Bool {
        return longitude < 0
    }
    
    func distanceTo(coordinate: Coordinate) -> Double {
        let calculation: Double = acos(sin(self.latitude) * sin(latitude) + cos(self.latitude) * cos(latitude) * cos(self.longitude-longitude)) * 6371000 / 1000.8
        return calculation.radians
    }
    
    
    
    
    
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
