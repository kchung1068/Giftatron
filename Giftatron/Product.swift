//
//  Product.swift
//  Giftatron
//
//  Created by Michael Linker on 12/4/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import Foundation
import UIKit

class Product {
    var image: UIImage
    var price : Double
    var name : String
    var url : String
    init( image: UIImage, price: Double, name: String,url: String) {
        self.image = image
        self.name = name
        self.price = price
        self.url = url
    }
    init() {
        image = UIImage()
        name = "product"
        price = 1.00
        url = "www.google.com"
    }
    
}
