//
//  ViewModel.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 10/07/23.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var currentUser = User.emptyUser
    @Published var profileUIState: UIState = .loading
    
    @Published var otherUser = User.emptyUser
    @Published var otherProfileUIState: UIState = .loading
    var previousUserId = ""
    
    
    func fetchProfile() {
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1, execute: {
            self.currentUser = User.mockUser
            self.currentUser.followers = User.allUser.filter { $0.id != "marcelo@deabreu.com" }
            self.currentUser.following = User.allUser.filter { $0.id != "marcelo@deabreu.com" }
            self.profileUIState = .loaded
        })
        
    }
    
    func fetchOtherProfile(otherUserId: String) {
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1, execute: {
            self.otherUser = User.allUser.first(where: { $0.id == otherUserId }) ?? User.emptyUser
            self.previousUserId = self.otherUser.id
            self.otherUser.followers = User.allUser.filter { $0.id != otherUserId }
            self.otherUser.following = User.allUser.filter { $0.id != otherUserId }
            self.otherProfileUIState = .loaded
        })
        
    }
    
    func resetOtherProfile(otherUserId: String) {
        
        if previousUserId != otherUserId {
            
            DispatchQueue.main.async(execute: {
                self.otherProfileUIState = .loading
            })
            
        }
        
    }
    
}
