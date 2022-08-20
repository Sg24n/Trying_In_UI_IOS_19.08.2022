//
//  CountriesTableViewController.swift
//  Trying_In_UI_IOS_19.08.2022
//
//  Created by Kira Vaskovskiy on 19.08.
//

import UIKit

struct Country{
    var isoCode:String
    var name: String
}


class CountriesTableViewController: UITableViewController {
    // MARK: - Table view data source
    
    //Массив с странами угу
    let countries = [
        Country(isoCode: "UA", name: "Ukraine"),
    Country(isoCode: "200", name: "DoNbAsss"),]

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        
        let country = countries[indexPath.row]
        cell.textLabel?.text = country.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    //кнопочничество
    
   
    }
    

