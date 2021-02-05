//
//  TopPlantView.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import SwiftUI

struct TopPlantView: View {
    
    @State private var search = ""
    
    var body: some View {
        
        
        VStack {
            
            Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1))
                .cornerRadius(55, corners: [.bottomLeft, .bottomRight])
                .edgesIgnoringSafeArea(.top)
                .padding(.bottom, 555)
                .overlay(
                    
                    HStack {
                        TextField("Search", text: $search)
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1))).opacity(0.4)
                    }
                    .padding()
                    .frame(width: 333, height: 45)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .clipShape(Capsule())
                    .offset(y: -180)
                    .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.2), radius: 5, x: 5, y: 5)
                    .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.2), radius: 5, x: -5, y: -5)
                    
                )
        }
    }
}

struct TopPlantView_Previews: PreviewProvider {
    static var previews: some View {
        TopPlantView()
    }
}
