//
//  ShippingAddressVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/11/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class ShippingAddressVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnSave(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "SuccessfullyOrderVC") as! SuccessfullyOrderVC
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
