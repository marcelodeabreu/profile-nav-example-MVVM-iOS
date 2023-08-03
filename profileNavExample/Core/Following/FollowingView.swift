//
//  FollowingView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 09/07/23.
//

import SwiftUI

struct FollowingView: View {
    var following: [User]
    
    var body: some View {
        ScrollView {
            
            LazyVStack {
                
                ForEach(following) { user in
                    
                    NavigationLink(value: Route.otherProfile(user.id)) {
                        UserRow(user: user)
                    }
                    
                }
                
            }
            
        }
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FollowingView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingView(following: User.allUser)
    }
}
