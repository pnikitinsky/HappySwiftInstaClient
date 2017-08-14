//
//  File.swift
//  HappySwiftInstaClient
//
//  Created by pavel on 11/13/16.
//  Copyright © 2016 pavel. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper
///// this struct is meant to hold user's info
//class Media : Object {
//    dynamic var photo = ""
//    dynamic var bigImg = ""
//    dynamic var dOfCreation = ""
//    dynamic var lowResImg = ""
//    dynamic var ownerD = ""
//
//}

/// Model of user's info, images
class Media: Object, BaseMappable {
    dynamic var userPhoto = ""
    dynamic var someImg = ""
    dynamic var dateOfCreation = ""
    dynamic var provectusImageView = ""
    dynamic var ownerData = ""

    class func objectForMapping(map: Map) -> BaseMappable? {
        return Media()
    }

    func mapping(map: Map) {
        userPhoto           <- map["images"]["profile_picture"]
        someImg             <- map["images"]["standard_resolution"]["url"]
        ownerData           <- map["user"]
        dateOfCreation      <- map["created_time"]
        provectusImageView  <- map["images"]["low_resolution"]["url"]
    }
}


















