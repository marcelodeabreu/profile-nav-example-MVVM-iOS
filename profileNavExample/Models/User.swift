//
//  User.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 07/07/23.
//

import Foundation

struct User: Identifiable {
    var id: String
    var displayName: String
    var username: String
    var followers: [User] = [User]()
    var following: [User] = [User]()
    
    static var emptyUser = User(id: "", displayName: "", username: "")
    
    static var mockUser = User(id: "marcelo@deabreu.com", displayName: "Marcelo de Abreu", username: "@marcelodeabreu")
    
    static var allUser = [User(id: "marcelo@deabreu.com", displayName: "Marcelo de Abreu", username: "@marcelodeabreu"),
                          User(id: "neymarjr@santos.com", displayName: "Neymar Jr.", username: "@meninoney"),
                          User(id: "tigerwoods@golf.com", displayName: "Tiger Woods", username: "@tigerwoods"),
                          User(id: "leodicaprio@world.com", displayName: "Leonardo DiCaprio", username: "@Leleo DiCaprio")]
    
}
