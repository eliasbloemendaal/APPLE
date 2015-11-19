//
//  Product.swift
//  APPLE
//
//  Created by elias bloemendaal on 18/11/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import Foundation
import UIKit

public enum Productrating
{
    case Unrated
    case Average
    case OK
    case Good
    case Brilliant
}

class Product
{
    var title: String
    var description: String
    var image = UIImage.self
    var rating: Productrating
    
    init(titled: String, description: String, imageName: String)
    {
        self.title = titled
        self.description = description
        if  let img = UIImage(named: imageName){
 //           image = img
        }else {
 //           image = UIImage(named: "default")
        }
        rating = .Unrated
        
    }
}