//
//  Challenge1.swift
//  Chalo
//
//  Created by Andrej Kling on 24.01.21.
//

import SwiftUI

struct Challenge1: View {
    var body: some View {
        
        ZStack {
            
            Color(#colorLiteral(red: 0.102768369, green: 0.01125960331, blue: 0.2572472394, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15.0) {
                
                HStack {
                    
                    VStack {
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "gearshape.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                    }
                    
                    Spacer()
                }
                .padding()
                
                Image("pushing-buttons-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .blur(radius: 0.1)
                   
                
                Text("FileStorkes")
                 .font(.system(size: 45, weight: .regular, design: .serif))
                    .foregroundColor(.white)
                
                Text("Sharing files has never been easier!")
                    .foregroundColor(.white)
                
                Spacer(minLength: 0)
                
                VStack(spacing: -15) {
                    
                    ButtonView()
                    
                    ButtonView2()
                }
                
                Spacer(minLength: 0)
                
                Text("How it´s works?")
                    .foregroundColor(.white)
                
                Text("It´s work very easy way, just try it...")
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct Challenge1_Previews: PreviewProvider {
    static var previews: some View {
        Challenge1()
    }
}

struct ButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(#colorLiteral(red: 0.2878687382, green: 0.1479336321, blue: 0.519064784, alpha: 1)))
                .frame(width: 355, height: 55)
                .overlay(Label("  New  Folder", systemImage: "folder.fill.badge.person.crop").offset(x: 45), alignment: .leading)
                .foregroundColor(.white)
        })
        .padding()
    }
}

struct ButtonView2: View {
    var body: some View {
        Button(action: {}, label: {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(#colorLiteral(red: 0.2878687382, green: 0.1479336321, blue: 0.519064784, alpha: 1)))
                .frame(width: 355, height: 55)
                .overlay(Label("  Open  Folder", systemImage: "folder.fill.badge.gear").offset(x: 45), alignment: .leading)
                .foregroundColor(.white)
        })
        .padding()
    }
}
