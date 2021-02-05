//
//  MenuButton.swift
//  Chalo
//
//  Created by Andrej Kling on 24.01.21.
//

import SwiftUI

struct MenuButton: View {
    
    var title : String
    @Binding var selected : String
    
    var body: some View {
        
        Button(action: {
            selected = title
        }) {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.orange, lineWidth: 2)
                .frame(width: 240, height: 55)
                .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).opacity(selected == title ? 1 : 0))
                .cornerRadius(15)
                .overlay(
                    Text(title)
                     .font(.system(size: 18, weight: .regular, design: .serif))
                        .fontWeight(selected == title ? .bold : .none)
                        .foregroundColor(selected == title ? Color(#colorLiteral(red: 0.7570714951, green: 0.7463875413, blue: 0.7499501109, alpha: 1)) : Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))))
        }
    }
}

var buttons = ["Prosperity","Glory","Humility","Success"]

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(title: "Prosperity", selected: .constant(""))
    }
}
