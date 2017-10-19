//: Playground - noun: a place where people can play

import UIKit


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

//var happy = Profile()
//happy.fullname = "David"
//happy.friends.append(Friend.init(name: ["Tom","Joe"], pictureURL: ["TomURL","JoeURL"]))

//dump(happy.friends)
//
//print(happy.friends[0].name[0])
//print(happy.friends[0].pictureURL[0])
//
//print(happy.friends[0].name[1])
//print(happy.friends[0].pictureURL[1])

// Distinguish Model Types (Sections)
enum ProfileViewModelType {
    case nameAndPicture
    case about
    case email
    case friend
    case attribute
}

// Properties of each Model Type
protocol ProfileViewModelItem {
    var type: ProfileViewModelType {get}
    var sectionTitle: String {get}
    var rowCount: Int {get}
}


// Setup this unique properties for each ProfileViewModelItem...

class ProfileViewModelNameAndPictureItem: ProfileViewModelItem {
    internal var rowCount: Int = 1
    
    var type: ProfileViewModelType {
        return .nameAndPicture
    }
    
    var sectionTitle: String {
        return "Name and Pic"
    }
    
    var pictureURL: String
    var userName: String
    
    init(pictureURL: String, userName: String) {
        self.pictureURL = pictureURL
        self.userName = userName
    }
    
}



class ProfileViewModelAboutItem: ProfileViewModelItem {
    internal var rowCount: Int = 1

  

    var type: ProfileViewModelType {
        return .about
    }
    var sectionTitle: String {
        return "About"
    }
    var about: String
    
    init(about: String) {
        self.about = about
    }
}


class ProfileViewModelEmailItem: ProfileViewModelItem {
    internal var rowCount: Int = 1

  
    var type: ProfileViewModelType {
        return .email
    }
    var sectionTitle: String {
        return "Email"
    }
    var email: String
    init(email: String) {
        self.email = email
    }
}


class ProfileViewModelAttributeItem: ProfileViewModelItem {
    var type: ProfileViewModelType {
        return .attribute
    }
    var sectionTitle: String {
        return "Attributes"
    }
    
    var rowCount: Int {
        // How many rows required
        return attributes.count
    }
    var attributes: [Attribute]
    init(attributes: [Attribute]) {
        self.attributes = attributes
    }
}


class ProfileViewModeFriendsItem: ProfileViewModelItem {
    var type: ProfileViewModelType {
        return .friend
    }
    var sectionTitle: String {
        return "Friends"
    }
    var rowCount: Int {
        // How many rows required
        return friends.count
    }
    var friends: [Friend]
    init(friends: [Friend]) {
        self.friends = friends
    }
}



//class ProfileViewModel: NSObject {
    var items = [ProfileViewModelItem]()
//    
//    override init(){
//        super.init()

        let pictureURL = "URL"
        let name = "name"
        let about = "about"
        let email = "email"
        let attrib = Attribute.init(key: ["1","2"], value: ["att1","att2"])
        let friends = Friend.init(name: ["Tom","Ken"], pictureURL: ["tomURL", "kenURL"])

        let nameAndPictureItem = ProfileViewModelNameAndPictureItem(pictureURL: pictureURL, userName: name)
        items.append(nameAndPictureItem)
        
        let aboutItem = ProfileViewModelAboutItem(about: about)
        items.append(aboutItem)
        
        let dobItem = ProfileViewModelEmailItem(email: email)
        items.append(dobItem)
        
        let attributesItem = ProfileViewModelAttributeItem(attributes: [attrib])
        items.append(attributesItem)

        let friendsItem = ProfileViewModeFriendsItem(friends: [friends])
        items.append(friendsItem)

        dump (items)

        // Number of sections
        items.count

        // what to display on what row
        // return items[section].rowCount

//    }
//}



// Default values for properties extention
extension ProfileViewModelItem {
    var rowCount: Int {
        return 1
    }
}

