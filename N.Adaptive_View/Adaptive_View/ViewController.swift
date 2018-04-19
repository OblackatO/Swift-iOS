//
//  ViewController.swift
//  Adaptive_View
//
//  Created by Pedro Gomes  on 23/01/2018.
//  Copyright © 2018 Pedro Gomes . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.title(for: .normal) == "X" {
            sender.setTitle("A very long title for this button", for: .normal)
        } else {
            sender.setTitle("X", for: .normal)
        }
    } 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

