//
//  OtherFollowingView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 10/07/23.
//

import SwiftUI

struct OtherFollowingView: View {
    var following: [User]
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            
            LazyVStack {
                
                ForEach(following) { user in
                    
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
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherFollowingView_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowingView(following: User.allUser, path: .constant(NavigationPath()))
    }
}
