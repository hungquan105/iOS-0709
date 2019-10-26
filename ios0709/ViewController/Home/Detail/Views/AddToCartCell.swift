//
//  AddToCartCell.swift
//  Buoi7
//
//  Created by Quân on 10/19/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class AddToCartCell: UITableViewCell {

    var didAddToCart: (()-> Void)! = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func AddToCart(_ sender: Any) {
        if didAddToCart != nil {
            didAddToCart()
        }
    }
    
}
