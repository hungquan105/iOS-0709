//
//  LoginViewController.swift
//  ios0709
//
//  Created by Quân on 10/19/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class LoginViewController: NavigationTranlucentViewController {
    
    //MARK: IBOUTLETS
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    //MARK: OTHER VARIABLES
    
    //MARK: VIEW LIFE CYCLE
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
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
    @IBAction func LOGIN(_ sender: Any) {
        let SCENE_DELEGATE = self.view.window?.windowScene?.delegate as! SceneDelegate
        // check login
        
        SCENE_DELEGATE.login(isLoged: true)
    }
    
}
