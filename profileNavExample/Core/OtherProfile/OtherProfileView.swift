//
//  OtherProfileView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 10/07/23.
//

import SwiftUI

struct OtherProfileView: View {
    
    @ObservedObject var vm: ViewModel
    var otherUserId: String
    
    var body: some View {
        VStack {
            if vm.otherProfileUIState == .loading {
                ProgressView()
            } else {
                VStack {
                    
                    HeaderView(user: vm.otherUser)
                    
                    InfoView()
                    
                    OtherFollowCountView(followers: vm.otherUser.followers, following: vm.otherUser.following)
                    
                    EditButton()
                    
                    PostListView()
                    
                }
                
            }
                
        }
        .task {
            vm.resetOtherProfile(otherUserId: otherUserId)
            vm.fetchOtherProfile(otherUserId: otherUserId)
        }
        .navigationTitle("\(vm.otherUser.username)")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct OtherProfileView_Previews: PreviewProvider {
    static var previews: some View {
        OtherProfileView(vm: ViewModel(), otherUserId: "")
    }
}
