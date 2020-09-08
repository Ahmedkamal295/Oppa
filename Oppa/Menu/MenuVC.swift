//
//  MenuVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/14/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var MenuLabel = [("Man"),("Woman"),("Youth"),("Kids"),("Order History"),("Notification"),("Favourit"),("Settings")]
    
    var MenuImage = [UIImage(named:"Icons-24px-dropdown"), UIImage(named:"Icons-24px-dropdown"), UIImage(named:"Icons-24px-dropdown"), UIImage(named:"Icons-24px-dropdown"), UIImage(named:"Icons-24px-dropdown"), UIImage(named:"Icons-24px-dropdown"), UIImage(named:"Icons-24px-dropdown"), UIImage(named:"Icons-24px-dropdown")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
        
        tableView.tableFooterView = UIView()
        tableView.separatorColor = UIColor.clear
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MenuCell
        cell?.lblMenu.text = MenuLabel[indexPath.row]
        cell?.imgMenu.image = MenuImage[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "ManCategories") as! ManCategories
                centerVC.modalPresentationStyle = .fullScreen
                let centerNavVC = UINavigationController(rootViewController: centerVC)
                panel!.center(centerNavVC)
            
        } else if indexPath.row == 1 {
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "WomanCategories") as! WomanCategories
                centerVC.modalPresentationStyle = .fullScreen
                          let centerNavVC = UINavigationController(rootViewController: centerVC)
                          panel!.center(centerNavVC)
            
            
        } else if indexPath.row == 2 {
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "YouthCategories") as! YouthCategories
                centerVC.modalPresentationStyle = .fullScreen
                let centerNavVC = UINavigationController(rootViewController: centerVC)
                panel!.center(centerNavVC)
            
          
        } else if indexPath.row == 3 {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "KidsCategories") as! KidsCategories
                centerVC.modalPresentationStyle = .fullScreen
                    let centerNavVC = UINavigationController(rootViewController: centerVC)
                    panel!.center(centerNavVC)
            
          
        } else if indexPath.row == 4 {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "OrderHistoryVC") as! OrderHistoryVC
                centerVC.modalPresentationStyle = .fullScreen
                    let centerNavVC = UINavigationController(rootViewController: centerVC)
                    panel!.center(centerNavVC)
            
           
        } else if indexPath.row == 5 {
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "NotificationVC") as! NotificationVC
                    centerVC.modalPresentationStyle = .fullScreen
                        let centerNavVC = UINavigationController(rootViewController: centerVC)
                                                                     panel!.center(centerNavVC)
            
          
        } else if indexPath.row == 6 {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "FavouritsVC") as! FavouritsVC
                centerVC.modalPresentationStyle = .fullScreen
                let centerNavVC = UINavigationController(rootViewController: centerVC)
                        panel!.center(centerNavVC)
            
         
        } else if indexPath.row == 7 {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
                        centerVC.modalPresentationStyle = .fullScreen
                        let centerNavVC = UINavigationController(rootViewController: centerVC)
                        panel!.center(centerNavVC)
            
          
        } else {
            print("Error")
        }
    }

    @IBAction func btnX(_ sender: Any) {
        if L102Language.currentAppleLanguage() == arabicLang {
            panel?.closeLeft()
        }else{
            panel?.closeRight()
        }
    }
    
    @IBAction func btnLogOut(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "NavigationController") as! NavigationController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
