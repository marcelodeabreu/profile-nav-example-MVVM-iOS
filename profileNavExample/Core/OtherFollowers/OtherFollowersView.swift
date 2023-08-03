//
//  OtherFollowersView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 10/07/23.
//

import SwiftUI

struct OtherFollowersView: View {
    var followers: [User]
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            
            LazyVStack {
                
                ForEach(followers) { user in
                    
                    if user.id == "marcelo@deabreu.com" {
                        Button {
                            path = NavigationPath()
                        } label: {
                                UserRow(user: user)
                        }
                    } else {
                        
                        NavigationLink(value: Route.otherProfile(user.id)) {
                            UserRow(user: user)
                        }
                        
                    }
                }
            }
        }
        .navigationTitle("Followers")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherFollowersView_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowersView(followers: User.allUser, path: .constant(NavigationPath()))
    }
}
