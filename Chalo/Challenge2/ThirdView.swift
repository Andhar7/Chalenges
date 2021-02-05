//
//  ThirdView.swift
//  Chalo
//
//  Created by Andrej Kling on 24.01.21.
//

import SwiftUI

struct ThirdView: View {
    
    @Binding var selected : String
    @Binding var show2 : Bool
    
    var body: some View {
        
        ZStack {
            
            Color(#colorLiteral(red: 0.264924258, green: 0.2725866437, blue: 0.6640843153, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    VStack(alignment: .leading) {
                        
                        Spacer(minLength: 185)
                        
                        Text("Do you have ")
                        Text("any of these? ")
                        
                        Spacer(minLength: 0)
                        
                        ForEach(buttons, id: \.self) { b in
                            
                            MenuButton(title: b, selected: $selected)
                        }
                        
                        Spacer(minLength: 0)
                    }
                    .font(.system(size: 33, weight: .regular, design: .serif))
                }
                .frame(maxWidth: .infinity)
                .frame(height: 600)
                .background(Color.white)
                .cornerRadius(45)
                .offset(y: -130)
                
                HStack(spacing: 25) {
                    
                    VStack(alignment: .leading)  {
                        
                        Text("Questions 2/4")
                            .font(.callout)
                            .foregroundColor(.white)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white)
                            .frame(width: 180, height: 5)
                            .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.orange)
                                .frame(width: 95)
                                .offset(x: -42)
                            )
                    }
                    
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 0.9685910344, green: 0.7890565991, blue: 0.3859867454, alpha: 1)))
                            .frame(width: 120, height: 55)
                            .clipShape(Capsule())
                            .overlay(Text(">>"))
                    })
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 25)
            }
        }
        .padding()
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(selected: .constant("Prosperity"), show2: .constant(false))
    }
}
