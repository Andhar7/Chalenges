//
//  VerticalButtonView.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import SwiftUI

struct VerticalButtonView: View {
    
    var icons = [ "sun", "icon_2", "icon_3", "icon_4"]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false ){
            
            VStack(spacing: 35) {
                
                ForEach(icons, id:\.self) { item in
                    
                    Image(item)
                        .padding(8)
                        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(10, corners: [ .bottomLeft, .topRight])
                        .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.1), radius: 5, x: 5, y: 5)
                        .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.1), radius: 5, x: 5, y: 5)
                }
            }
        }
        .offset(x: -143, y: 100)
    }
}

struct VerticalButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalButtonView()
    }
}
