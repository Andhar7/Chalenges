//
//  DetailPlantView.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import SwiftUI

struct DetailPlantView: View {
    
    @Binding var selection : Plant!
    @Binding var shows : Bool
    var cool : Namespace.ID
    
    var body: some View {
        
        ZStack {
            
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 300, height: 700)
                .offset(x: 55, y: -188)
                .overlay(
                    Image(selection!.image)
                    .resizable()
                    .frame(width: 320, height: 600)
                    .matchedGeometryEffect(id: "selection\(selection.image)", in: cool)
                    .cornerRadius(155, corners: [.bottomLeft])
                    .offset(x: 55, y: -158)
                    .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.4), radius: 10, x: 5, y: 5)
                    .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.4), radius: 10, x: -5, y: -5)
                )
                
            TabPlantView()
                .offset(x: 85, y: 110)
            
            VStack{
                
                HStack {
                    
                    Button(action: {
                        withAnimation(.easeOut){
                            shows.toggle()
                        }
                    }, label: {
                        Image("back_arrow")
                    })
                    
                    Spacer(minLength: 0)
                    
                    ForEach(0 ..< 3) { item in
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                
                Spacer(minLength: 0)
            }
            
            VStack {
                
               VerticalButtonView()
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        
                        Text(selection!.title)
                            .font(.title)
                            .bold()
                            .matchedGeometryEffect(id: "title\(selection.title)", in: cool)
                        
                        Spacer(minLength: 0)
                        
                        Text(selection!.price)
                            .font(.title3)
                            .matchedGeometryEffect(id: "price\(selection.price)", in: cool)
                            .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.4), radius: 10, x: 5, y: 5)
                        
                    }
                    .padding(.horizontal)
                    
                    Text("Russia")
                        .padding(.horizontal)
                        .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.4), radius: 10, x: 5, y: 5)
                }
                .offset(y: 23)
                
                VStack {
                    
                    HStack {
                        
                        Button(action: {}, label: {
                            Text("Buy Now")
                                .padding()
                                .foregroundColor(.white)
                                .frame(width: 200, height: 85)
                                .background(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)) .edgesIgnoringSafeArea(.all))
                                .cornerRadius(35, corners: [.topRight])
                                .offset(y: 53)
                        })
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {}, label: {
                            Text("Description")
                                .padding()
                                .foregroundColor(.black)
                                .frame(width: 200, height: 85)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .offset(y: 53)
                        })
                    }
                    .padding(.bottom)
                }
                .padding(.bottom, 33)
            }
        }
    }
}

struct DetailPlantView_Previews: PreviewProvider {
    
    @Namespace static var cool
    
    static var previews: some View {
        DetailPlantView(selection: .constant(plants[0]), shows: .constant(false), cool: cool)
    }
}
