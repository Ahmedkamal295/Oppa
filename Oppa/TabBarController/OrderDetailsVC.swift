//
//  OrderDetailsVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/14/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class OrderDetailsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var image = [UIImage(named:"Rectangle-2"),UIImage(named:"Rectangle Copy"),UIImage(named:"Rectangle Copy 2-1")]
    
    var details = [("Rolex Oyster Perpetual Watch"),("The Ambasador Heritage 1950"),("Rolex Oyster Perpetual Watch - Black")]
    
    var price = [("$259"),("$259"),("$259")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? OrderDetailsCell
        cell?.imgOrder.image = image[indexPath.row]
        cell?.lblDetails.text = details[indexPath.row]
        cell?.lblPrice.text = price[indexPath.row]
        return cell!
    }
    
    @IBAction func btnSelect(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
    
    @IBAction func btnPlaceOrder(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "MyAddressesVC") as! MyAddressesVC
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
