//
//  NavigationTranlucentViewController.swift
//  ios0709
//
//  Created by Quân on 10/19/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class NavigationTranlucentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        
        navigationController?.navigationBar.shadowImage = UIImage()
        
        navigationController?.navigationBar.tintColor =  #colorLiteral(red: 0.01676723734, green: 0.8367071748, blue: 0.9702088237, alpha: 1)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
