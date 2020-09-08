//
//  NotificationVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/11/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class NotificationVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tittlee = [("Rolex Discount"),("Valentine Special"),("Christmas Special")]
    
    var details = [("Valid until February 2020"),("Valid until 14th February 2020"),("Valid until February 2020")]
    
    var percent = [("20%"),("14%"),("30%")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        tableView.reloadData()
        
        tableView.tableFooterView = UIView()
        tableView.separatorColor = UIColor.clear
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? NotificationCell
        cell?.lblTitle.text = tittlee[indexPath.row]
        cell?.lblDetails.text = details[indexPath.row]
        cell?.lblPercent.text = percent[indexPath.row]
        return cell!
    }
    
    @IBAction func btnBack(_ sender: Any) {
         appscene.SideMenu()
    }
}
