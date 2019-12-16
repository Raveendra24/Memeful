//
//  MostViral.swift
//  Memeful
//
//  Created by techjini on 15/12/19.
//  Copyright © 2019 Raveendra. All rights reserved.
//

import Foundation

class MostViral: Codable {
    let data : [Data]?
    let success : Bool?
    let status : Int?
}

class Data: Codable  {
    var id : String?
    var title : String?
    var description : String?
    var datetime : Int?
    var type : String?
    var animated : Bool?
    var width : Int?
    var height : Int?
    var size : Int?
    var views : Int?
    var bandwidth : Int?
    var vote : String?
    var favorite : Bool?
    var nsfw : Bool?
    var section : String?
    var account_url : String?
    var account_id : Int?
    var is_ad : Bool?
    var in_most_viral : Bool?
    var has_sound : Bool?
    var tags : [Tags]?
    var ad_type : Int?
    var ad_url : String?
    var edited : Int?
    var in_gallery : Bool?
    var topic : String?
    var topic_id : Int?
    var link : String?
    var ad_config : Ad_config?
    var comment_count : Int?
    var favorite_count : Int?
    var ups : Int?
    var downs : Int?
    var points : Int?
    var score : Int?
    var is_album : Bool?
}

class Ad_config : Codable {
    var safeFlags : [String]?
    var highRiskFlags : [String]?
    var unsafeFlags : [String]?
    var wallUnsafeFlags : [String]?
    var showsAds : Bool?
}

class Tags : Codable {
    var name : String?
    var display_name : String?
    var followers : Int?
    var total_items : Int?
    var following : Bool?
    var is_whitelisted : Bool?
    var background_hash : String?
    var thumbnail_hash : String?
    var accent : String?
    var background_is_animated : Bool?
    var thumbnail_is_animated : Bool?
    var is_promoted : Bool?
    var description : String?
    var logo_hash : String?
    var logo_destination_url : String?
}
