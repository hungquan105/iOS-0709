//
//  HomeViewController.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class HomeViewController: NavigationTranlucentViewController {
    
    //MARK: IBOUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: OTHER VARIABLES
    var arrProduct:[Product] = []
    var imgv:UIImageView = UIImageView()
    
    //MARK: VIEW LIFE CYCLE
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Trang Chủ"
        arrProduct = [
            Product(id: "0", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "1", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "2", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "3", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "4", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "5", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "6", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "7", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "8", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000"),
            Product(id: "9", name: "iPhone", image: #imageLiteral(resourceName: "apple-iphone-11"), quantity: "1", price: "1000")
        ]
        setupUI()
        setupVar()
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

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BannerCell") as! BannerCell
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoryCell
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 200
        } else {
            return 66
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductListCell", for: indexPath) as! ProductListCell
            cell.arrProduct = self.arrProduct
            cell.didGoToDetail = { (prod) in
                let productDetailVC = STORYBOARD_MAIN.instantiateViewController(withIdentifier: "ProductDetailViewController") as! ProductDetailViewController
                productDetailVC.product = prod
                productDetailVC.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(productDetailVC, animated: true)
            }
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 0
        } else {
            return UITableView.automaticDimension
        }
    }
}
