//
//  ProfileView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 07/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var path = NavigationPath()
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                if vm.profileUIState == .loading {
                    ProgressView()
                } else {
                    VStack {
                        
                        HeaderView(user: vm.currentUser)
                        
                        InfoView()
                        
                        FollowCountView(followers: vm.currentUser.followers, following: vm.currentUser.following)
                        
                        EditButton()
                        
                        PostListView()
                        
                    }
                    
                }
                    
            }
            .task {
                vm.fetchProfile()
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Route.self) { route in
                switch route {
                    
                case .followers:
                    FollowersView(followers: vm.currentUser.followers)
                    
                case .following:
                    FollowingView(following: vm.currentUser.following)
                    
                case let .otherProfile(otherUserId):
                    OtherProfileView(vm: vm, otherUserId: otherUserId)
                    
                case .otherFollowers:
                    OtherFollowersView(followers: vm.otherUser.followers, path: $path)
                    
                case .otherFollowing:
                    OtherFollowingView(following: vm.otherUser.following, path: $path)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
