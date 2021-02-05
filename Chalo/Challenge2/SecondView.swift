//
//  SecondView.swift
//  Chalo
//
//  Created by Andrej Kling on 24.01.21.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var show : Bool
    @Binding var selected : String
    @State private var show2 = false
    
    var body: some View {
        
        
        
        ZStack {
            
            Color(#colorLiteral(red: 0.2687572539, green: 0.2764123976, blue: 0.6784499288, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                VStack(alignment: .leading, spacing: 25.0) {
                    
                    Text("1st check-in \n reported!")
                        .font(.system(size: 33, weight: .regular, design: .serif))
                    
                    Text("You try work more and more and you will \n see that you will understand more... ")
                }
                .foregroundColor(.white)
                
                Spacer(minLength: 0)
                
                Image("parenting")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                Spacer(minLength: 0)
                
                
                Button(action: {
                    show2.toggle()
                }) {
                    RoundedRectangle(cornerRadius: 24)
                        .fill(Color(#colorLiteral(red: 0.9546068311, green: 0.7819573283, blue: 0.3710157275, alpha: 1)))
                        .frame(width: 120, height: 65)
                        .overlay(
                            Text("Continue >>")
                                .font(.system(size: 15, weight: .regular, design: .serif))
                                .foregroundColor(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
                        )
                }
                .offset(x: 55)
                
                Spacer(minLength: 0)
            }
            .sheet(isPresented: $show2) {
                
                ThirdView(selected: $selected, show2: $show2)
            }
            .padding()
            .padding(.top)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(show: .constant(false), selected: .constant("") )
    }
}
