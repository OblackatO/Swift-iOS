//
//  ViewController.swift
//  tut16_sliders
//
//  Created by Pedro Gomes  on 26/12/2017.
//  Copyright © 2017 Pedro Gomes . All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var label_1: UILabel!
    
    @IBAction func slide_1(_ sender: UISlider) {
        self.label_1.text = "\(lroundf(sender.value))"
    }
    
    
    @IBAction func First_Second(_ sender: UISegmentedControl) {
        let sender_value = sender.selectedSegmentIndex
        switch sender_value  {
            case 0 : label_1.text = "First"
            case 1 : label_1.text = "Second"
            default: return
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

