//
//  FavouritsVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/11/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class FavouritsVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var image = [UIImage(named:"attachment_77536106-e1528674476680"), UIImage(named:"attachment_77536106-e1528674476680"), UIImage(named:"attachment_77536106-e1528674476680"), UIImage(named:"attachment_77536106-e1528674476680")]
    
    var info = [("Rolex Oyster Perpetua…"),("The Ambassador Heri…"),("Rolex Oyster Perpetua…"),("The Ambassador Heri…")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
           self.collectionView.reloadData()
        
           collectionView.dataSource = self
           collectionView.delegate = self
    }
    
    @IBAction func btnBack(_ sender: Any) {
        appscene.SideMenu()
    }
}

extension FavouritsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FavouritsCell
        cell.imgFavourit.image = image[indexPath.row]
        cell.lblInfo.text = info[indexPath.row]
        return cell
    }
}

extension FavouritsVC : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: (collectionView.frame.width - 10)/2, height: 190)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
}
