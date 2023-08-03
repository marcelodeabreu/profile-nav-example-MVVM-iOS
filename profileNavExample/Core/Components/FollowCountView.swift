//
//  FollowCountView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 07/07/23.
//

import SwiftUI

struct FollowCountView: View {
    
    var followers: [User]
    var following: [User]
    
    var body: some View {
        
        HStack {
            
            Spacer()
            
            NavigationLink(value: Route.followers) {
                
                VStack {
                    
                    Text("\(followers.count)")
                    Text("Followers")
                    
                }
                .foregroundColor(.black)
            }
            
            Spacer()
            
            NavigationLink(value: Route.following) {
                
                VStack {
                    
                    Text("\(following.count)")
                    Text("Following")
                    
                }
                .foregroundColor(.black)
            }
        
            Spacer()
            
        }
        
    }
}

struct FollowCountView_Previews: PreviewProvider {
    static var previews: some View {
        FollowCountView(followers: User.allUser, following: User.allUser)
    }
}
