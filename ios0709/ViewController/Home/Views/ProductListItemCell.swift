//
//  ProductListItemCell.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ProductListItemCell: UICollectionViewCell {
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var imgv: UIImageView!
    
    func bindData(prod: Product){
        lbName.text = prod.name
        lbPrice.text = prod.price
        //imgv.image = prod.image
    }
}
