//
//  PostRow.swift
//  profileNavExample
//
//  Created by Marcelo de Abreu on 07/07/23.
//

import SwiftUI

struct PostRow: View {
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.white)
                .shadow(radius: 5)
            
            HStack(spacing: 20) {
                
                Image(systemName: "pencil")
                    .font(.system(size: 30))
                    .frame(width: 60, height: 60)
                    .foregroundColor(.purple)
                    .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.purple, lineWidth: 2))
                
                VStack {
                    
                    Text("Random Post")
                        .bold()
                    
                    Text("Lorem ipsum dolor sit amet.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                }
                
                Spacer()
                
            }
            .padding(.horizontal)
        }
        .frame(height: 100)
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow()
    }
}
