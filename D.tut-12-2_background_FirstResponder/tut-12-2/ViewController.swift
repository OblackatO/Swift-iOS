//
//  ViewController.swift
//  tut-12-2
//
//  Created by Pedro Gomes  on 26/12/2017.
//  Copyright © 2017 Pedro Gomes . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var user_text_field: UITextField!
    @IBOutlet weak var password_text_field: UITextField!
    
    @IBAction func LogIn_button(_ sender: UIButton) {
        
        
        //method resignFirstResponder()
        self.user_text_field.resignFirstResponder()
        self.password_text_field.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //Forces all editings in text fields to close.
        self.view.endEditing(true)
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

