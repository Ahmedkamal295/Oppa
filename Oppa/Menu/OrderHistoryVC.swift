//
//  OrderHistoryVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/11/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class OrderHistoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var order = [("ORDER #21412"),("ORDER #21403"),("ORDER #21358"),("ORDER #21313")]
    
    var placeOn = [("23th of January"),("31st of December"),("14th of November"),("2nd ot December")]
    
    var amount = [("$230.99"),("$99.00"),("$599.00"),("$599.00")]
    
    var status = [("Delivered"),("Canceled"),("Delivered"),("Delivered")]
    
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
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? OrderHistoryCell
        cell?.lblOrder.text = order[indexPath.row]
        cell?.lblPlacedOn.text = placeOn[indexPath.row]
        cell?.lblAmount.text = amount[indexPath.row]
        cell?.lblStatus.text = status[indexPath.row]
        return cell!
    }
    
    @IBAction func btnBack(_ sender: Any) {
        appscene.SideMenu()
    }
}
