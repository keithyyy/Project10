//
//  Person.swift
//  Project10
//
//  Created by Keith Crooc on 2021-06-06.
//

import UIKit


//creating a class to hold some data for our 'Person'
// [update June15] adding userDefaults aka NSCoder
class Person: NSObject, NSCoding {
    var name: String
    var image: String
    
    
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        image = aDecoder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(image, forKey: "image")
    }
}
