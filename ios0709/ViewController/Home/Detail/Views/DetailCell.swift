//
//  DetailCell.swift
//  Buoi7
//
//  Created by Quân on 10/19/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell {
    @IBOutlet weak var lbQuantity: UILabel!
    @IBOutlet weak var lbProductName: UILabel!
    
    var didChangeQuantity: ((_ sl: Int)->Void)! = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func minus(_ sender: Any) {
        var sl: Int = Int(lbQuantity.text!)!
        if sl > 1 {
            sl -= 1
        }
        if didChangeQuantity != nil {
            didChangeQuantity(sl)
        }
    }
    @IBAction func plus(_ sender: Any) {
        var sl: Int = Int(lbQuantity.text!)!
        sl += 1
        if didChangeQuantity != nil {
            didChangeQuantity(sl)
        }
    }
    func bindData(product: Product) {
        lbProductName.text = product.name
        lbQuantity.text = product.quantity
    }
    
    
}
