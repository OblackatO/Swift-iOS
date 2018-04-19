//
//  Computer_class.swift
//  Codable_code
//
//  Created by Pedro Gomes  on 06/01/2018.
//  Copyright © 2018 Pedro Gomes . All rights reserved.
//

import Foundation

class Computer : Codable {

    private var name : String
    private var model : String
    private var CPU : Int
    
    init(_ name : String, _ model : String, _ CPU : Int) {
        self.name = name
        self.model = model
        self.CPU = CPU
    }
    
    enum CodingKeys : String, CodingKey  {
        case name = "computer_name"
        case model
        case CPU
    }
    
    func Get_name() -> String {
        return self.name
     }
    
    func Get_model() -> String  {
        return self.model
     }
    
    func Get_CPU() -> Int  {
        return self.CPU
    }
}
