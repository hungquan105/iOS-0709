//
//  ProductDetailViewController.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    //MARK: IBOUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: OTHER VARIABLES
    var product: Product?
    
    //MARK: VIEW LIFE CYCLE
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        setupUI()
        setupVar()
        callAPI()
    }
    
    //MARK: - SETUP VAR
    func setupVar() {
        
    }
    
    //MARK: - SETUP UI
    func setupUI() {
        
    }
    
    //MARK: - CALL API
    func callAPI() {
        
        fillData()
    }
    
    //MARK: - FILL AND BIND DATA
    func fillData() {
        
    }
    
    //MARK: - BUTTON ACTIONS
}

extension ProductDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailBannerCell") as! DetailBannerCell
            //cell.imgv.image = self.product?.image
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell") as! DetailCell
            cell.bindData(product: self.product!)
            cell.didChangeQuantity = {(sl) in
                self.product?.quantity = String(sl)
                tableView.reloadData()
            }
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddToCartCell") as! AddToCartCell
            cell.didAddToCart = {
                arrProductInCart.append(self.product!)
                print(arrProductInCart.count)
            }
            return cell
        }
        
    }
    
}
