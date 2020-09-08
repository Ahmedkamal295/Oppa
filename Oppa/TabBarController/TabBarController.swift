//
//  TabBarController.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/18/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.isTranslucent = false
        self.tabBar.backgroundColor = UIColor(named: "#FFFFFF")
    }
}
