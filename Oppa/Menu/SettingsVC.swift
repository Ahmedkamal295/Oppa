//
//  SettingsVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/11/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func btnBack(_ sender: Any) {
        appscene.SideMenu()
    }
}
