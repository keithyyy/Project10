//
//  Person.swift
//  Project10
//
//  Created by Keith Crooc on 2021-06-06.
//

import UIKit


//creating a class to hold some data for our 'Person'
class Person: NSObject {
    var name: String
    var image: String
    
    
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
