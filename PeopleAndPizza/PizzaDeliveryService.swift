//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Bejan Fozdar on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class PizzaDeliveryService {
    
    var location: Coordinate
    var pizzasAvaiable: Int = 10
    
    
    init(location: Coordinate, pizzasAvailable: Int) {
        self.location = location
        self.pizzasAvaiable = pizzasAvailable
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        return destination.distanceTo(coordinate: self.location) > 5000
    }
    
    func deliverPizzaTo(destination: Coordinate) -> Bool {
        if self.isInRange(destination: destination) {
            pizzasAvaiable -= 1
            return true
        } else {
            return false
        }
    }
    
}
