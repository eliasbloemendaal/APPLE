//
//  Productline.swift
//  APPLE
//
//  Created by elias bloemendaal on 18/11/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import Foundation

class ProductLine {
    var name: String
    var products: [Product]
    
    init(named: String, includeProducts: [Product])
    {
        name = named
        products = includeProducts
    }
    
   // class func productLines() -> [ProductLine] {
        
   // }
}
