//
//  commentsClass.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 14/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import Foundation

class comments{
    
    var body : String!
    var email : String!
    var id : Int!
    var name : String!
    var postId : Int!

    init(fromDictionary dictionary: NSDictionary){
        body = dictionary["body"] as? String
        email = dictionary["email"] as? String
        id = dictionary["id"] as? Int
        name = dictionary["name"] as? String
        postId = dictionary["postId"] as? Int
    }
    
}