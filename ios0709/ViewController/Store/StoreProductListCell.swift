//
//  StoreProductListCell.swift
//  ios0709
//
//  Created by Quân on 11/22/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class StoreProductListCell: UITableViewCell {

    @IBOutlet weak var imgvProductImage: UIImageView!
    @IBOutlet weak var lbProductName: UILabel!
    @IBOutlet weak var lbProductPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func bindData(pro: Product){
        
    }
    
    @IBAction func erase(_ sender: Any) {
        
    }
}
