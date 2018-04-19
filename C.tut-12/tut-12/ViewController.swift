//
//  ViewController.swift
//  tut-12
//
//  Created by Pedro Gomes  on 26/12/2017.
//  Copyright © 2017 Pedro Gomes . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Label_ToBeChanged: UILabel!
    
    @IBAction func button1_pressed(_ sender: UIButton) {
        
        let button_title = sender.title(for: .normal)!
        
        if button_title == "left_button" {
            self.Label_ToBeChanged.textColor = UIColor.brown
            self.Label_ToBeChanged.text = "\(button_title) was pressed"
            
        }else if button_title == "right_button" {
            self.Label_ToBeChanged.textColor = UIColor.red
            self.Label_ToBeChanged.text = "\(button_title) was pressed"
            
        }else if button_title == "up_button" {
            self.Label_ToBeChanged.textColor = UIColor.cyan
            self.Label_ToBeChanged.text = "\(button_title) was pressed"
            
        }else if button_title == "down_button" {
            self.Label_ToBeChanged.textColor = UIColor.darkGray
            self.Label_ToBeChanged.text = "\(button_title) was pressed"
        }
        
    }
    
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     */


}

