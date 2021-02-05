//
//  TopTitlePlantView.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import SwiftUI

struct TopTitlePlantView: View {
    var body: some View {
        
        VStack  {
            
            HStack {
                
                Image("menu")
                Spacer()
            }
            .padding()
            
            HStack{
                
                Text("Hi Andrej!")
                 .font(.system(size: 23, weight: .regular, design: .serif))
                
                Spacer(minLength: 0)
                
                Image("logo")
                  
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct TopTitlePlantView_Previews: PreviewProvider {
    static var previews: some View {
        TopTitlePlantView()
    }
}
