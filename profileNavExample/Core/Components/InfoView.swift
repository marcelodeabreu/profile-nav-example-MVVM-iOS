//
//  InfoView.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 07/07/23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                
                Label("Last played", systemImage: "clock")
                    .foregroundColor(.gray)
                Label("Brazil", systemImage: "map")
                    .foregroundColor(.gray)
                
            }
            
            Spacer()
            
        }
        .padding(.horizontal)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
