//
//  ViewController.swift
//  thenewboston
//
//  Created by Pedro Gomes  on 24/12/2017.
//  Copyright © 2017 Pedro Gomes . All rights reserved.
//

import UIKit
import CryptoSwift

class ViewController: UIViewController {
    
    let data = Data(bytes: [0x01, 0x02, 0x03])
    
    
    @IBOutlet weak var Label1_text: UILabel!
    
    @IBAction func buttonpressed(_ sender: UIButton){
        //send is the object that called this method in this case the button : twen_Button and Button.
        
        //let bytes = data.bytes
        let button_title = sender.title(for: .normal)!
        self.Label1_text.text = "You clicked on \(button_title)"
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
     Functions not needed for the momement
     */


}

