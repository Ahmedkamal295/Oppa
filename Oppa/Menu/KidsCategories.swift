//
//  KidsCategories.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/20/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class KidsCategories: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var image = [UIImage(named:"Rectangle Copy 2"),UIImage(named:"Rectangle Copy 2"),UIImage(named:"Rectangle Copy 2"),UIImage(named:"Rectangle Copy 2"),UIImage(named:"Rectangle Copy 2"),UIImage(named:"Rectangle Copy 2"),UIImage(named:"Rectangle Copy 2"),UIImage(named:"Rectangle Copy 2"),UIImage(named:"Rectangle Copy 2")]
    
    var price = [("20 $"),("30 $"),("50 $"),("70 $"),("85 $"),("35 $"),("40 $"),("99 $"),("65 $")]
    
    var name = [("Khaled"),("Ahmed"),("Mohab"),("Mohamed"),("Koko"),("Lolo"),("Soso"),("Ibrahim"),("Mahmoud")]
    
    var info = [("White T-shirt"),("Blue T-shirt"),("Yellow T-shirt"),("Red T-shirt"),("Gray T-shirt"),("Black T-shirt"),("Silver T-shirt"),("Green T-shirt"),("Red T-shirt")]
    
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

extension KidsCategories: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! KidsCategoriesCell
        cell.lblName.text = name[indexPath.row]
        cell.lblInfo.text = info[indexPath.row]
        cell.lblPrice.text = price[indexPath.row]
        cell.imgProduct.image = image[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "ProductDescriptionVC") as! ProductDescriptionVC
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

extension KidsCategories : UICollectionViewDelegateFlowLayout {
    
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: (collectionView.frame.width - 10)/2, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
