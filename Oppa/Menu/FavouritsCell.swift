//
//  FavouritsCell.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/11/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class FavouritsCell: UICollectionViewCell {
    
    @IBOutlet weak var imgFavourit: UIImageView!
    
    @IBOutlet weak var lblInfo: UILabel!
    
    @IBAction func btnFavourit(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
}
