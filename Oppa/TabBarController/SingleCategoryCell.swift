//
//  SingleCategoryCell.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/9/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class SingleCategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var imgProducts: UIImageView!
    
    @IBOutlet weak var lblInfo: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBAction func btnFavourit(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
}
