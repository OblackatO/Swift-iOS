//
//  ViewController.swift
//  Foodtracker
//
//  Created by Pedro Gomes  on 23/12/2017.
//  Copyright © 2017 Pedro Gomes . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK : Properties

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        /*
         method used to trigger keyboard while user is typing in the
         text box
        */
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
        /*
         Simply adds the text input by the user in
         the mealNameLabel
        */
    }
    
    //MARK : Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default text"
        
    }
    
    /*
     The event is the user tapping the Set Default Text button.
     The action is setDefaultLabelText(_).
     The target is ViewController (where the action method is defined).
     The sender is the Set Default Label Text button.
     */
    
    /* "Connect the UI to code lesson" wrap up :
  
     In this lesson, you’ve used the assistant editor to add outlets and actions to your source code. You’ve also added code to update the user interface as the user interacts with the controls. The project is still just a relatively simple, single scene, but you will continue to add features and increase its complexity over the remaining lessons.
    
     */
    
    
    
    


}

