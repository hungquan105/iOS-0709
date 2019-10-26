//
//  CartAddressCell.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class CartAddressCell: UITableViewCell {

    @IBOutlet weak var lbProductQuantityInCart: UILabel!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbPhoneNumber: UILabel!
    @IBOutlet weak var lbAddress: UILabel!
    
    var didGoToAddressList:(()->Void)? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lbProductQuantityInCart.text = "Bạn có @ sản phẩm trong giỏ hàng"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func goToAddressList(_ sender: Any) {
        if self.didGoToAddressList != nil {
            self.didGoToAddressList!()
        }
    }

}
