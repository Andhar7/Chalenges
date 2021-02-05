//
//  GuedButtonView.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import SwiftUI

struct GuedButtonView: View {
    
    var item : Guide
    
    var body: some View {
        
        Button(action: {
            
        }) {
            RoundedRectangle(cornerRadius: 55)
                .stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), lineWidth: 2).opacity(0.3)
                .frame(width: 55, height: 108)
                .overlay(
                    Image(item.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Capsule())
                        .frame(height: 65)
                        .offset(y: -12)
                )
                .overlay(
                    Text(item.name)
                         .font(.system(size: 12, weight: .regular, design: .serif))
                        .foregroundColor(.black)
                        .offset(y: 32)
                )
        }
    }
}

struct GuedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GuedButtonView(item: guideData[0])
    }
}
