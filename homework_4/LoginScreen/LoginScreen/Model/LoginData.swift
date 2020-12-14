//
//  LoginData.swift
//  LoginScreen
//
//  Created by Nikita Entin on 12.12.2020.
//


struct LoginData {
    private(set) var login = "log"
    private(set) var password = "pass"
    var fullName: String {
        "\(login.localizedCapitalized) aka Nikita Entin"
    }
}

