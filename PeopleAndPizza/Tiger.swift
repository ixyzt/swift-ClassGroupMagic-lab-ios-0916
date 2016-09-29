//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Bejan Fozdar on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Tiger {
    var name:String
    var isHungry:Bool = true
    
    init(name: String) {
        self.name = name
    }
    
    func eat() {
        isHungry = false
    }
    
}

let mrTiger = Tiger(name: "mrTiger")

