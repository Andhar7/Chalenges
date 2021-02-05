//
//  DetailBulView.swift
//  Chalo
//
//  Created by Andrej Kling on 03.02.21.
//

import SwiftUI

struct DetailBulView: View {
    
    
    @Binding var isSelected : RedBull?
    @Binding var showDetail : Bool
    var namespace : Namespace.ID
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            isSelected!.backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        withAnimation(.easeOut){
                            showDetail.toggle()
                        }
                    }) {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .frame(width: 15, height: 15)
                }
                    Spacer(minLength: 0)
                    Button(action: {
                        
                    }) {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .padding()
                            .background(Color.white.opacity(0.3))
                            .clipShape(Capsule())
                }
                }
                .padding()
                .foregroundColor(.white)
                
                Spacer(minLength: 0)
                
                HStack {
                    
                    Image(isSelected!.image)
                        .resizable()
                        .scaledToFit()
                        .matchedGeometryEffect(id: "image\(isSelected!.image)", in: namespace)
                        .offset(x: -15)
                    
                    VStack(alignment: .leading) {
                        
                        Text(isSelected!.title)
                         .font(.system(size: 18, weight: .regular, design: .serif))
                            .matchedGeometryEffect(id: "title\(isSelected!.title)", in: namespace)
                        
                        Text("Redbull")
                         .font(.system(size: 33, weight: .regular, design: .serif))
                        
                        Text(isSelected!.subtitle)
                            .font(.system(size: 15, weight: .regular, design: .serif))
                            .matchedGeometryEffect(id: "subtitle\(isSelected!.subtitle)", in: namespace)
                        
                        Text(isSelected!.price)
                            .bold()
                            .padding(.top)
                            .matchedGeometryEffect(id: "price\(isSelected!.price)", in: namespace)
                        
                        Spacer(minLength: 0)
                    }
                    .foregroundColor(.white)
                }
                .padding()
            }
            
            VStack {
                
                VStack {
                    
                    Text("Quantity".uppercased())
                        .font(.caption)
                    Text("750")
                        .bold()
                    
                    Text("Alchohol".uppercased())
                        .font(.caption)
                        .padding(.top)
                    Text("1.3%")
                        .bold()
                    
                    Text("Sugar".uppercased())
                        .font(.caption)
                        .padding(.top)
                    Text("5.7%")
                        .bold()
                      
                }
                .padding(.horizontal)
                .foregroundColor(.white)
                .offset(x: 135, y: 230)
                
                ScrollView(.vertical, showsIndicators: false)  {
                 
                        Text("Red Bull Energy Drink is appreciated worldwide by top athletes, students, and in higly demanding professions as well as during long drives. Red Bull Energy Drink is appreciated worldwide by top athletes, students, and in higly demanding professions as well as during long drives.Red Bull Energy Drink is appreciated worldwide by top athletes, students, and in higly demanding professions as well as during long drives. Red Bull Energy Drink is appreciated worldwide by top athletes, students, and in higly demanding professions as well as during long drives.")
                    
                }
                .frame(width: 270, height: 400)
                .background(Color.white)
                .cornerRadius(35, corners: [.bottomLeft, .topRight])
                .offset(x: -53, y: 55)
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.red).opacity(0.8)
                    .frame(width: 150, height: 35)
                    .overlay(
                        HStack {
                            Text("Add to bag ")
                                .bold()
                            Image(systemName: "bag")
                                .font(.title3)
                        }
                        .foregroundColor(.white)
                    )
            })
            .offset(x: 95, y: -24)
        }
    }
}

struct DetailBulView_Previews: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        DetailBulView(isSelected: .constant(redbull[0]), showDetail: .constant(false), namespace: namespace)
    }
}
