//
//  SectionPlantView.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import SwiftUI

struct SectionPlantView: View {
    
    var title : String
    
    var body: some View {
        
        HStack {
            
            Text(title)
                .bold()
                .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
            
            Spacer(minLength: 0)
            
            Button(action: {}, label: {
                Text("More")
                    .font(.caption)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .padding(.horizontal)
                    .background(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                    .clipShape(Capsule())
            })
        }
        .padding()
    }
}

struct SectionPlantView_Previews: PreviewProvider {
    static var previews: some View {
        SectionPlantView(title: "Recomended")
    }
}
