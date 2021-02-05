//
//  TitleRedView.swift
//  Chalo
//
//  Created by Andrej Kling on 03.02.21.
//

import SwiftUI

struct TitleRedView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(action: {}, label: {
                    Image(systemName: "calendar.badge.plus")
                })
                Spacer(minLength: 0)
                
                Text("Drinks")
                 .font(.system(size: 23, weight: .regular, design: .serif))
                    .bold()
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "book")
                })
            }
            .padding()
            .foregroundColor(.secondary)
            
       //     Spacer(minLength: 0)
        }
    }
}

struct TitleRedView_Previews: PreviewProvider {
    static var previews: some View {
        TitleRedView()
    }
}
