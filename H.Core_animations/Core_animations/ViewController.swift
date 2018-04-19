//
//  ViewController.swift
//  Core_animations
//
//  Created by Pedro Gomes  on 01/01/2018.
//  Copyright © 2018 Pedro Gomes . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Button_animation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Create animation block
        UIView.animate(withDuration: 3, animations:   {
            let grow  = CGAffineTransform.init(scaleX:3, y:3)
            let angle = CGFloat(30)
            let rotate = CGAffineTransform.init(rotationAngle: angle)
            self.Button_animation.transform = rotate.concatenating(grow)
            //Could have done :
            //self.Button_animation.transform = grow.concatenating(rotate)

        }
        )
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

