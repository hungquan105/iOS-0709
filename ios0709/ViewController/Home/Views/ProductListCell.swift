//
//  ProductListCell.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ProductListCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrProduct:[Product] = []
    
    // closure
    var didGoToDetail:((_ product: Product)->Void)! = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension ProductListCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductListItemCell", for: indexPath) as! ProductListItemCell
        cell.bindData(prod: arrProduct[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.didGoToDetail != nil {
            self.didGoToDetail!(arrProduct[indexPath.item])
        }
    }
    
}

