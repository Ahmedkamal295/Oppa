//
//  PhoneVerificationVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/9/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class PhoneVerificationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnX(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnRequest(_ sender: Any) {
        appscene.SideMenu()
    }
    
}
