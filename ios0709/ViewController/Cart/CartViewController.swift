//
//  CartViewController.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class CartViewController: NavigationTranlucentViewController {
    
    //MARK: IBOUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: OTHER VARIABLES
    
    //MARK: VIEW LIFE CYCLE
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Giỏ Hàng"
        
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

extension CartViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if arrProductInCart.count > 0 {
            return arrProductInCart.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartAddressCell") as! CartAddressCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartProductListCell", for: indexPath) as! CartProductListCell
        if arrProductInCart.count > 0 {
            cell.nonProdView.isHidden = true
            cell.prodView.isHidden = false
            cell.lbCount.text = arrProductInCart[indexPath.row].quantity
        } else {
            cell.nonProdView.isHidden = false
            cell.prodView.isHidden = true
        }
        cell.index = indexPath.row
        cell.didChangeAmount = { (sl, i) in
            arrProductInCart[i].quantity = sl
            self.tableView.reloadData()
        }
        cell.didRemove = { (i) in
            arrProductInCart.remove(at: i)
            self.tableView.reloadData()
        }
        cell.didChangeViewHome = {
            let senceDelegate = self.view.window?.windowScene?.delegate as! SceneDelegate
            senceDelegate.login(isLoged: true)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartPurchaseCell") as! CartPurchaseCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 220
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 108
    }
}
