//
//  Person.swift
//  ContactCard-App
//
//  Created by Thomas Woerdeman on 11/10/2016.
//  Copyright © 2016 Thomas Woerdeman. All rights reserved.
//

import Foundation

class Person : NSObject {
    
    public var foreName : String?
    public var lastName : String?
    public var imageUrl : String?
    
    init(foreName : String, lastName : String, imageUrl : String) {
        self.foreName = foreName
        self.lastName = lastName
        self.imageUrl = imageUrl
    }
    
}
