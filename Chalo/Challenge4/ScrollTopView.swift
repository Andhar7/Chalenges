//
//  ScrollTopView.swift
//  Chalo
//
//  Created by Andrej Kling on 03.02.21.
//

import SwiftUI

struct ScrollTopView: View {
    
    @State private var select = "Redbull"
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                
                ForEach(nameButton, id:\.self) { item in
                    
                    ScrollItemView(nameB: item, select: $select)
 
                }
            }
        }
    }
}

struct ScrollTopView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollTopView()
    }
}

var nameButton = [ "Redbull", "Monster", "Heineker", "Budweiser" ]

struct ScrollItemView: View {
    
    var nameB : String
    @Binding var select : String

    var body: some View {
        
        Button(action: {
            select = nameB
        }, label: {
            Text(nameB)
                .font(.system(size: 23, weight: .regular, design: .serif))
                .padding(.horizontal)
                .background(
                    Capsule()
                        .foregroundColor(select == nameB ? .red : Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))).opacity(0.5)
                )
                .foregroundColor(select == nameB ? .white : .black)
        })
    }
}
