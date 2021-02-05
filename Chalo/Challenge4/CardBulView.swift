//
//  CardBulView.swift
//  Chalo
//
//  Created by Andrej Kling on 03.02.21.
//

import SwiftUI

struct CardBulView: View {
    
    var bull : RedBull
    var namespace : Namespace.ID
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: -5) {
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 0) {
                        
                        Text(bull.title)
                            .font(.system(size: 23, weight: .regular, design: .serif))
                            .matchedGeometryEffect(id: "title\(bull.title)", in: namespace)
                        
                        
                        Text("Redbull")
                            .font(.system(size: 43, weight: .regular, design: .serif))
                           
                        
                        Text(bull.subtitle)
                            .matchedGeometryEffect(id: "subtitle\(bull.subtitle)", in: namespace)
                        
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    Image(bull.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .offset(y: 55)
                        .matchedGeometryEffect(id: "image\(bull.image)", in: namespace)
                    
                }
                
                Text(bull.price)
                    .font(.title)
                    .bold()
                    .matchedGeometryEffect(id: "price\(bull.price)", in: namespace)
            }
            .padding(.horizontal)
            .padding(.vertical)
            .foregroundColor(.white)
            .background(
                bull.backgroundColor
                    .cornerRadius(35, corners: [.topRight, .bottomLeft])
            )
        }
        .padding()
    }
}

struct CardBulView_Previews: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        CardBulView(bull: redbull[0], namespace: namespace)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
