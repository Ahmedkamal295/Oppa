//
//  MyAddressesVC.swift
//  Oppa
//
//  Created by Khaled Ghoniem on 8/11/20.
//  Copyright © 2020 Khaled Ghoniem. All rights reserved.
//

import UIKit

class MyAddressesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var address = [("HOME ADDRESS"),("WORK ADDRESS")]
    
    var addressLine1 = [("Kings Street 20,"),("Mulberry Avenue 2415,")]
    
    var addressLine2 = [("Southfield, Michingan (MI), 48075"),("Eugene, Oregon (OR), 97402")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.reloadData()
        
        tableView.tableFooterView = UIView()
        tableView.separatorColor = UIColor.clear
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyAddressesCell
        cell?.lblAddress.text = address[indexPath.row]
        cell?.lblAddressLine1.text = addressLine1[indexPath.row]
        cell?.lblAddressLine2.text = addressLine2[indexPath.row]
        return cell!
    }
    
    @IBAction func btnAddAdress(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "ShippingAddressVC") as! ShippingAddressVC
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
