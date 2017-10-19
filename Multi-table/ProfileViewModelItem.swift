//
//  ProfileViewModelItem.swift
//  Multi-table
//
//  Created by David on 13/10/17.
//  Copyright © 2017 Permaculture Power. All rights reserved.
//

import Foundation

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

// Default values for properties extention
extension ProfileViewModelItem {
    var rowCount: Int {
        return 1
    }
}

// SetupProfileView Model
class ProfileViewModel: NSObject {
    var items = [ProfileViewModelItem]()
    
    override init(){
        super.init()
        
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
        
    }
}
