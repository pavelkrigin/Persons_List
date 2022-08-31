//
//  Person.swift
//  Persons_List
//
//  Created by Pavel Krigin on 31.8.22..
//

struct Person {
    let name: String
    let surname: String
    let telephone: String
    let email: String
    
    
//    var fullName: String {
//        "\(name) \(surname)"
//    }
    static func getPerson() -> Person {
        Person(
            name: "Павел",
            surname: "Кригин",
            telephone: "+7-987-554-12-01",
            email: "john@mail.com")
            
            }
    
}
