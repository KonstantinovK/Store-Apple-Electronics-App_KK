//
//  ProductsTableViewController.swift
//  Store-Apple-Electronics-App_KK
//
//  Created by MacBook on 30.03.2022.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    private var deviceList = Device.getProductList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // navigationItem.leftBarButtonItem = editButtonItem
        tableView.rowHeight = 160
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        deviceList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "product", for: indexPath)
        let device = deviceList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = device.name
        content.secondaryText = device.detail
        content.image = UIImage(named: device.name)
        content.imageProperties.cornerRadius = 18
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let DetailVC = segue.destination as? DetailViewController else { return }
        DetailVC.product = sender as? Device
    }

}

// MARK: - UITableViewDelegate
 extension ProductsTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let device = deviceList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: device)
    }
    
     override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
     override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let device = deviceList.remove(at: sourceIndexPath.row)
        deviceList.insert(device, at: destinationIndexPath.row)
    }
}


