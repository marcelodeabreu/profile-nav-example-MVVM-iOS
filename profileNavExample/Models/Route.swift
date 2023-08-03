//
//  Route.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 10/07/23.
//

import Foundation

enum Route: Hashable {
    
    case followers
    case following
    case otherProfile(String)
    case otherFollowers
    case otherFollowing
    
}
