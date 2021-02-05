//
//  DetailBaliView.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import SwiftUI

struct DetailBaliView: View {

    @Binding var selected : Place!
    @Binding var show : Bool
    var animation : Namespace.ID
    
    var body: some View {
        
        ZStack  {
            
            Image(selected.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea(.all, edges: .all)
                .matchedGeometryEffect(id: selected.image, in: animation)
            
            
            VStack {
                
                HStack{
                    
                    Button(action: {
                        withAnimation(.easeOut){
                            self.show.toggle()
                        }
                    }) {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                .padding()
                .foregroundColor(.white)
                
                Spacer(minLength: 0)
            }
            
            VStack {
                
                ScrollView(.vertical) {
                    
                    Text("Welcome guys to the first lesson of the podcast app course. You are going to hopefully learn what you need to start your iOS development career. In this first lesson, we are mainly going to focus on setting up the project environment. Welcome guys to the first lesson of the podcast app course. You are going to hopefully learn what you need to start your iOS development career. In this first lesson, we are mainly going to focus on setting up the project environment. Welcome guys to the first lesson of the podcast app course. You are going to hopefully learn what you need to start your iOS development career. In this first lesson, we are mainly going to focus on setting up the project environment.")
                        .padding(.horizontal, 55)
                        .padding(.vertical, 55)
                }
                .frame(width: 320, height: 450)
                .foregroundColor(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
                .background(Color.white)
                .cornerRadius(33)
                .offset(y: 35)
            }
        }
    }
}

struct DetailBaliView_Previews: PreviewProvider {
    
    @Namespace static var animation
    
    static var previews: some View {
        DetailBaliView(selected: .constant(places[0]), show: .constant(false), animation: animation)
    }
}
