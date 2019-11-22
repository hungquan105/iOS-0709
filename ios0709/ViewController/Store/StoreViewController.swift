//
//  StoreViewController.swift
//  ios0709
//
//  Created by Quân on 10/20/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class StoreViewController: NavigationTranlucentViewController {

    //MARK: IBOUTLETS
    @IBOutlet weak var nonProductView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: OTHER VARIABLES
    var arrProductInStore:[Product] = []
    
    //MARK: VIEW LIFE CYCLE
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if arrProductInStore.count > 0 {
            self.tableView.isHidden = false
            self.nonProductView.isHidden = true
        } else {
            self.tableView.isHidden = true
            self.nonProductView.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Gian Hàng"
        
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

extension StoreViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProductInStore.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoreProductListCell", for: indexPath) as! StoreProductListCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
