//
//  Person.swift
//  TableViewApp
//
//  Created by Nikita Entin on 22.12.2020.
//
import UIKit

struct Person {
    var firstName: String
    var secondName: String
    var email: String
    var phoneNumber: String
    
    
    static func getPerson() -> [Person] {
        return [
            Person(firstName: DataManager().personFirstName[0], secondName: DataManager().personSecondName[0], email: DataManager().personEmail[0], phoneNumber: DataManager().personNumber[0]),
            Person(firstName: DataManager().personFirstName[1], secondName: DataManager().personSecondName[1], email: DataManager().personEmail[1], phoneNumber: DataManager().personNumber[1]),
            Person(firstName: DataManager().personFirstName[2], secondName: DataManager().personSecondName[2], email: DataManager().personEmail[2], phoneNumber: DataManager().personNumber[2]),
            Person(firstName: DataManager().personFirstName[3], secondName: DataManager().personSecondName[3], email: DataManager().personEmail[3], phoneNumber: DataManager().personNumber[3]),
            Person(firstName: DataManager().personFirstName[4], secondName: DataManager().personSecondName[4], email: DataManager().personEmail[4], phoneNumber: DataManager().personNumber[4])
        ]
    }
}


