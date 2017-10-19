//
//  Profile.swift
//  Multi-table
//
//  Created by David on 13/10/17.
//  Copyright © 2017 Permaculture Power. All rights reserved.
//

import Foundation

class Profile {
    var fullname: String?
    var pictureURL: String?
    var email: String?
    var about: String?
    var friends = [Friend]()
    var profileAttributes = [Attribute]()
}

class Friend {
    var name: [String]
    var pictureURL: [String]
    
    init(name: [String], pictureURL: [String]){
        self.name = name
        self.pictureURL = pictureURL
    }
}

class Attribute {
    var key: [String]
    var value: [String]
    
    init(key: [String], value: [String]){
        self.key = key
        self.value = value
    }
}
