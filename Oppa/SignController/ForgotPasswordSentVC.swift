//
//  ForgotPasswordSentVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/9/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class ForgotPasswordSentVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnX(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnOpenMail(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "PhoneVerificationVC")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
