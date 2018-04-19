//
//  ViewController.swift
//  TableViews_Tut-20
//
//  Created by Pedro Gomes  on 29/12/2017.
//  Copyright © 2017 Pedro Gomes . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    //static information for the tables
    let countries_capitals =  [("Portugal","Lisboa"), // section0
                               ("France", "Paris"),
                               ("Spain", "Madrid")]
    
    let available_airport =  [("Portugal", "Porto"), //section1
                              ("France", "Paris"),
                              ("Spain", "Barcelone"),
                              ("Noport_name", "Noport")]
    
    //how many sections are on table
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //how many rows are on table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //The number of rows are equivalent to the number of elements in the
        //count == length in java I think
        //we need to distigish between the length of the two sections(coutries_capitals and available_airport)
        
        if section == 0  {
            return self.countries_capitals.count
        }else {
            print("im in section 1 in 1 function")
            return self.available_airport.count
        }
     }
    
    //Content of each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //indexPaht.row dinamically allows to get the current index of the list
        let cell = UITableViewCell()
        
        //We do the same thing here, and verify the section.
        if indexPath.section == 0  {
            var (country, capital) = self.countries_capitals[indexPath.row]
            cell.textLabel?.text = country
         }else {
            print("im in section 1 in 2 function")
            var (town, airport) = self.available_airport[indexPath.row]
            cell.textLabel?.text = town
         }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0  {
            return "Countries - Capitals"
        }else {
            return "Towns - Airports"
        }
     }
    /*
    Please note and do not forget that if you want to see the sections separed by
    a space change the settings on the tableview in the attributes inspector
    of thr style attribte to grouped
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}
