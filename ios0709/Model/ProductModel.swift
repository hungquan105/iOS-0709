//
//  ProductModel.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import Foundation
import UIKit

//MARK: - ProductList
public struct ProductList: Codable {

        public var id : String!
        public var name : String!
        public var products : [Product]!
        
}
//MARK: - Product
public struct Product: Codable {

        public var id : String!
        public var name : String!
        public var price : String!
        public var quantity : String!
        
}
//struct Product {
//    var id:String
//    var name:String
//    var image:UIImage
//    var quantity:String
//    var price:String
//}

//struct Category {
//    var id: String
//    var name: String
//}



