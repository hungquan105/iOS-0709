//
//  BaseTabbarViewController.swift
//  ios0709
//
//  Created by Quân on 10/19/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class BaseTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabbar()
    }
    
    func setupTabbar() {
        
        let home = STORYBOARD_MAIN.instantiateViewController(withIdentifier: "HomeViewController")
        home.tabBarItem = UITabBarItem(title: "Trang Chủ", image: #imageLiteral(resourceName: "home"), tag: 100)
        let navHome = BaseNavigationViewController(rootViewController: home)
        
        let store = STORYBOARD_MAIN.instantiateViewController(withIdentifier: "StoreViewController")
        store.tabBarItem = UITabBarItem(title: "Gian Hàng", image: #imageLiteral(resourceName: "gift"), tag: 200)
        let navStore = BaseNavigationViewController(rootViewController: store)
        
        let cart = STORYBOARD_MAIN.instantiateViewController(withIdentifier: "CartViewController")
        cart.tabBarItem = UITabBarItem(title: "Giỏ Hàng", image: #imageLiteral(resourceName: "shopping-cart"), tag: 300)
        let navCart = BaseNavigationViewController(rootViewController: cart)
        
        let profile = STORYBOARD_MAIN.instantiateViewController(withIdentifier: "ProfileViewController")
        profile.tabBarItem = UITabBarItem(title: "Cá Nhân", image: #imageLiteral(resourceName: "user"), tag: 400)
        let navProfile = BaseNavigationViewController(rootViewController: profile)
        
        // them UIViewController vao mang viewControllers
        self.viewControllers = [navHome, navStore, navCart, navProfile]
    }
}
