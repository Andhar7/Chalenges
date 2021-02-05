//
//  CardFrontPlantView.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import SwiftUI

struct CardFrontPlantView: View {
    
    var plant : Plant
    var cool : Namespace.ID
    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading, spacing: 0) {
                
                Image(plant.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: "plant\(plant.image)", in: cool)
                    .frame(height: 240)
                    
                HStack(spacing: 75) {
                    
                    Text(plant.title.uppercased())
                        .font(.caption)
                        .bold()
                        .matchedGeometryEffect(id: "plant\(plant.title)", in: cool)
                        .padding(5)
                       
                    
                    Text(plant.price)
                        .font(.caption)
                        .matchedGeometryEffect(id: "plant\(plant.price)", in: cool)
                        .padding(5)
                        .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))

                    
                }
                
                Text("Russia")
                    .font(.caption)
                    .padding(4)
                    .padding(.bottom, 5)
                    .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.2), radius: 5, x: 5, y: 5)
            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.2), radius: 5, x: -5, y: -5)
        }


    }
}

struct CardFrontPlantView_Previews: PreviewProvider {
    
    @Namespace static var cool
    
    static var previews: some View {
        CardFrontPlantView(plant: plants[0], cool: cool)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
