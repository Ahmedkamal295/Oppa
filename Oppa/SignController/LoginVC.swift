//
//  LoginVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/9/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnRemember(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
    
    @IBAction func btnForgotPassword(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "ForgotPasswordVC")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnSignIn(_ sender: Any) {
        appscene.SideMenu()
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "RegisterVC")
        navigationController?.pushViewController(vc, animated: true)
    }
}
