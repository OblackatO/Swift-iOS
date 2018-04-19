//
//  ViewController.swift
//  core_data_guide
//
//  Created by Pedro Gomes  on 01/01/2018.
//  Copyright © 2018 Pedro Gomes . All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var main_table_view: UITableView!
    var  people : [NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Names List"
        self.main_table_view.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func addname(_ sender: UIBarButtonItem) {
        
       let alert_sctructure = UIAlertController(
            title: "Nouveau Client",
            message: "Nom:",
            preferredStyle: .alert
        )
        
        let save_alert_action = UIAlertAction(
            title:"Sauveguarder",
            style : .default
        ) {
        
            [unowned self] action in
        
            if ((alert_sctructure.textFields?.first) != nil) {
                self.save(name:(alert_sctructure.textFields?.first?.text)!)
            }else {
                return
            //try to insert case warning the user that values are lacking
            }
            self.main_table_view.reloadData()
          }
    
        
        let cancel_alert_action = UIAlertAction(
            title : "Cancel",
            style : .default
        )
        
        alert_sctructure.addTextField()
        alert_sctructure.addAction(save_alert_action)
        alert_sctructure.addAction(cancel_alert_action)
        
        present(alert_sctructure, animated: true)
    }
    
    
}

// MARK: - UITableViewDataSource
extension ViewController : UITableViewDataSource  {
 
    /*
     If you’ve ever worked with UITableView, this code should look very familiar. First you return the number of rows in the table as the number of items in your names array.
     Next, tableView(_:cellForRowAt:) dequeues table view cells and populates them with the corresponding string from the names array.
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = people[indexPath.row]
        let cell = self.main_table_view.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //convert name to String. The desbribing keyword makes part of the String constructor.
        cell.textLabel?.text = String(describing: person.value(forKeyPath: "name")!)
        return cell
    }
    /*
     func tableView(_ tableView: UITableView,
     cellForRowAt indexPath: IndexPath)
     -> UITableViewCell {
     
     let person = people[indexPath.row]
     let cell =
     tableView.dequeueReusableCell(withIdentifier: "Cell",
     for: indexPath)
     cell.textLabel?.text =
     person.value(forKeyPath: "name") as? String
     return cell
     }
     */
    
}

/*
 I STAYED AT THE core data part
 https://www.raywenderlich.com/173972/getting-started-with-core-data-tutorial-2
 */

