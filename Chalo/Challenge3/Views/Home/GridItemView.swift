//
//  GridItemView.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import SwiftUI

struct GridItemView: View {
    
    var place : Place
    var animation : Namespace.ID
    
    var body: some View {

        ZStack(alignment: .bottom) {
            
            Image(place.image)
                .resizable()
                .frame(height: 220)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .matchedGeometryEffect(id: place.image, in: animation)
            
            HStack {
                
                Text(place.title)
                    .font(.system(size: 23, weight: .regular, design: .serif))
                    .foregroundColor(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
                
                Spacer()
            }
            .padding()
            .background(Color.white.opacity(0.7))
            .cornerRadius(15)
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    
    @Namespace static var animation
    
    static var previews: some View {
        GridItemView(place: places[0], animation: animation)
    }
}
