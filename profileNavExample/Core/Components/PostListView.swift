//
//  PostListView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 07/07/23.
//

import SwiftUI

struct PostListView: View {
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                
                ForEach(0 ... 10, id: \.self) { _ in
                    
                    PostRow()
                    
                }
                
            }
            
        }
        
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
