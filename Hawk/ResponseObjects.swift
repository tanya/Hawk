//
//  ReviewsObject.swift
//  Hawk
//
//  Created by Shreyas Hirday on 11/23/16.
//  Copyright © 2016 HirDaysOfTheWeek. All rights reserved.
//

import Foundation
import ObjectMapper

class ReviewsResponse: Mappable {
    var status : String?
    var message : String?
    var reviews : [Review]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        reviews <- map["results"]
    }
    
}

class Review : Mappable {
    var rId : Int?
    var rating : Double?
    var citystate : String?
    var comments : String?
    var userId : String?
    var lat : Double?
    var lon : Double?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        rId <- map["rId"]
        rating <- map["rating"]
        citystate <- map["citystate"]
        comments <- map["comments"]
        userId <- map["userId"]
        lat <- map["lat"]
        lon <- map["lon"]
    }

}
