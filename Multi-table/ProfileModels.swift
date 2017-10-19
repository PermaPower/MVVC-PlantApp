//
//  ProfileViewModelNameAndPictureItem.swift
//  Multi-table
//
//  Created by David on 13/10/17.
//  Copyright © 2017 Permaculture Power. All rights reserved.
//

import Foundation

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
