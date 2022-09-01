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
    
    // - геттер
    var fullName: String {
        "\(name) \(surname) \(telephone) \(email)"
        
    }
}
    // - метод возвращающий массив
extension Person {
    static func getPerson() -> [Person] {
        [
            Person (name: "Pavel", surname: "Krigin", telephone: "+7-987-555-20-29", email: "Pavel@mail.com"),
            Person (name: "Eugenia", surname: "Bruyko", telephone: "+7-987-555-21-29", email: "Eugenia@mail.com"),
            Person (name: "Karina", surname: "Krasnogorskaya", telephone: "+7-987-555-22-29", email: "Karina@mail.com"),
            Person (name: "", surname: "Sobin", telephone: "+7-987-555-23-29", email: "Ilya@mail.com"),
            Person (name: "Evgeniia", surname: "Shevtsova", telephone: "+7-987-555-24-29", email: "Evgeniia@mail.com"),
            Person (name: "Anton", surname: "Saltykov", telephone: "+7-987-555-25-29", email: "Anton@mail.com"),
            Person (name: "Bogdan", surname: "Swift", telephone: "+7-987-555-26-29", email: "Bogdan@mail.com"),
            Person (name: "Maxim", surname: "Laskin", telephone: "+7-987-555-27-29", email: "Maxim@mail.com"),
            Person (name: "Sam", surname: "Kafarov", telephone: "+7-987-555-28-29", email: "Sam@mail.com"),
            Person (name: "Daniel", surname: "Morozenko", telephone: "+7-987-555-29-29", email: "Daniel@mail.com")
        ]
            }
}

