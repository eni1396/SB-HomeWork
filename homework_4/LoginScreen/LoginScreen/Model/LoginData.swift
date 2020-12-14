//
//  LoginData.swift
//  LoginScreen
//
//  Created by Nikita Entin on 12.12.2020.
//


struct LoginData {
    private(set) var login = "Login"
    private(set) var password = "Password"
    var fullName: String {
        "\(login) aka Nikita Entin"
    }
}

