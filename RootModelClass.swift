//
//  RootModelClass.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 05/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import Foundation

class RootClass{
    
    var body : String!
    var id : Int!
    var title : String!
    var userId : Int!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        body = dictionary["body"] as? String
        id = dictionary["id"] as? Int
        title = dictionary["title"] as? String
        userId = dictionary["userId"] as? Int
    }
    
}