//
//  Contact.swift
//  TrackListApp
//
//  Created by Кунгурцев Эдуард Сергеевич on 23.03.2022.
//

import Foundation



struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    static func getPerson() -> Person  {
        let manager = DataManager()
        let name = manager.names.shuffled()[0]
        let surname = manager.surnames.shuffled()[0]
        let email = manager.emails.shuffled()[0]
        let phone = manager.phones.shuffled()[0]
        return Person(name: name, surname: surname, phone: phone, email: email)
        
    }
    
    
    static func getPersons() -> [Person] {
        [
           getPerson(),
           getPerson(),
           getPerson(),
           getPerson(),
           getPerson(),
           getPerson(),
           getPerson(),
           getPerson(),
           getPerson(),
           getPerson()

        ]
        
    }
}





