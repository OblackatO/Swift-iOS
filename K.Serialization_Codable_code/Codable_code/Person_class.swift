//
//  Person_class.swift
//  Codable_code
//
//  Created by Pedro Gomes  on 04/01/2018.
//  Copyright © 2018 Pedro Gomes . All rights reserved.
//

import Foundation

class Person : Codable {
    
    
    private var name : String
    private var age : Int
    private var job : String
    
    init(_ name : String, _ age : Int, _ job : String) {
        self.name = name
        self.age = age
        self.job = job
    }
    
    public func get_Name() -> String  {
        return self.name
    }
    
    public func get_Age() -> Int  {
        return self.age
    }
    
    public func get_job() -> String  {
        return self.job
    }
}
