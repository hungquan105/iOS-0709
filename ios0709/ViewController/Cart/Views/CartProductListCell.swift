//
//  CartProductListCell.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class CartProductListCell: UITableViewCell {
    
    @IBOutlet weak var nonProdView: UIView!
    @IBOutlet weak var prodView: UIView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var lbCount: UILabel!
        var index : Int? //lay index o cellforrow
    var didChangeAmount : ((_ amount : String , _ i : Int) -> Void)! = nil
    var didRemove : ((_ i : Int) -> Void)! = nil
    var didChangeViewHome : (() -> Void )! = nil

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func add(_ sender: Any) {
        var sl: Int = Int(self.lbCount.text!)!
        sl += 1
        if didChangeAmount != nil {
            didChangeAmount(String(sl), index!)
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        var sl: Int = Int(self.lbCount.text!)!
        if sl > 1 {
            sl -= 1
        }
        if didChangeAmount != nil {
            didChangeAmount(String(sl), index!)
        }
    }
    
    @IBAction func erase(_ sender: Any) {
        if didRemove != nil {
            didRemove(index!)
        }
    }
    
    @IBAction func gotoHome(_ sender: Any) {
//        let senceDelegate = self.view.window.windowScene?.delegate as! SceneDelegate
//        senceDelegate.login(isLoged: true)
        if didChangeViewHome != nil {
            didChangeViewHome()
        }
    }
}
