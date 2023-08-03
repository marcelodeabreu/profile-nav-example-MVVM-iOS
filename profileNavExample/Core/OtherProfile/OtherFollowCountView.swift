//
//  OtherFollowCountView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 10/07/23.
//

import SwiftUI

struct OtherFollowCountView: View {
    
    var followers: [User]
    var following: [User]
    
    var body: some View {
        
        HStack {
            
            Spacer()
            
            NavigationLink(value: Route.otherFollowers) {
                
                VStack {
                    
                    Text("\(followers.count)")
                    Text("Followers")
                    
                }
                .foregroundColor(.black)
            }
            
            Spacer()
            
            NavigationLink(value: Route.otherFollowing) {
                
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

struct OtherFollowCountView_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowCountView(followers: User.allUser, following: User.allUser)
    }
}
