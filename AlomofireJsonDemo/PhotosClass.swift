//
//  PhotosClass.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 13/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import Foundation

class photes{
    
    var albumId : Int!
    var id : Int!
    var title : String!
    var thumbnailUrl : String!
     var url : String!
    
  
    init(fromDictionary dictionary: NSDictionary){
        albumId = dictionary["body"] as? Int
        id = dictionary["id"] as? Int
        title = dictionary["title"] as? String
        thumbnailUrl = dictionary["thumbnailUrl"] as? String
        url = dictionary["url"] as?String
    }
    
}