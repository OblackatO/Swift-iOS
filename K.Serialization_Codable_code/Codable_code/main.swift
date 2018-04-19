//
//  main.swift
//  Codable_code
//
//  Created by Pedro Gomes  on 04/01/2018.
//  Copyright © 2018 Pedro Gomes . All rights reserved.
//

import Foundation

print("Hello, World!")
var person1 = Person("Pedro", 21, "student")
print("Person object created")

let jsencod = JSONEncoder()
let encodedData = try? jsencod.encode(person1)

var utf8_repre = String(data : encodedData!, encoding : .utf8)
print("\(utf8_repre ?? "No json data available")")
print("Currently decoding object \(encodedData)")

let jsdecod = JSONDecoder()

do  {
    
    let decodedData = try jsdecod.decode(Person.self, from: encodedData!)
    print("Data about decoded object")
    print(decodedData.get_Name())
    print(decodedData.get_Age())
    print(decodedData.get_job())

}catch  {
    print("An error occured while decoding the object")
 
}

//Renaming keys in serialized data : (in class : Computer)

let computer_object = Computer("X-bot", "MacAir", 64)
let encoded_pc = try? jsencod.encode(computer_object)

print("\nNote that the attribute name changed to computer_name")
utf8_repre = String(data : encoded_pc!, encoding : .utf8)
print("\(utf8_repre ?? "No json data available")")


/*
// Guide : https://www.raywenderlich.com/172145/encoding-decoding-and-serialization-in-swift-4
*/
 



