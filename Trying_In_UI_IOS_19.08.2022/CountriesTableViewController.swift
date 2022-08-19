//
//  CountriesTableViewController.swift
//  Trying_In_UI_IOS_19.08.2022
//
//  Created by Kira Vaskovskiy on 19.08.
//

import UIKit

class CountriesTableViewController: UITableViewController {


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        
        cell.textLabel?.text = "Section \(indexPath.section). Row \(indexPath.row)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
//    self.tableView.register(CountriesTableViewController, forCellReuseIdentifier: "CountryCell"))

}
