//
//  Challenge2.swift
//  Chalo
//
//  Created by Andrej Kling on 24.01.21.
//

import SwiftUI

struct Challenge2: View {
    
    @State private var show = false
    @Binding var selected : String
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            ZStack {
                
                Color(#colorLiteral(red: 0.264924258, green: 0.2725866437, blue: 0.6640843153, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    VStack {
                        
                        VStack  {
                            
                            HStack {
                                
                                
                                VStack {
                                    
                                    Text("May")
                                    Text("25th")
                                }
                                .background(Color(#colorLiteral(red: 0.9406071305, green: 0.9371047616, blue: 0.9581043124, alpha: 1)))
                                .cornerRadius(5)
                                
                                Spacer(minLength: 0)
                                
                                Button(action: {}, label: {
                                    Image(systemName: "text.justify")
                                        .font(.title2)
                                })
                            }
                            .padding(.horizontal)
                            .padding(.top, 35)

                            HStack {
                                
                                VStack(alignment: .leading, spacing: 10.0) {
                                    
                                    Text("How people feel in ")
                                    
                                    Label("Los Angeles", systemImage: "dot.circle.and.cursorarrow")
                                        .font(.system(size: 23, weight: .regular, design: .serif))
                                    
                                }
                                .padding()
                                
                                Spacer()
                            }
                            
                            Spacer(minLength: 0)
                            
                            HStack(spacing: 10) {
                                
                                CardView()
                                
                                CardView2()
                            }
                            .padding(.horizontal)
                            
                            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        }
                    }
                   // .padding(.vertical, 55)
                    .frame(maxWidth: .infinity)
                    .frame(height: 600)
                    .background(Color.white)
                    .cornerRadius(65)
                    .offset(y: -55)
                    
                    VStack(alignment: .leading, spacing: 25.0) {
                        
                        Text("9.555 people checked in today")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .blur(radius: 0.2)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: -5)

                        
                        Button(action: {
                            
                            withAnimation(.spring()){
                                show.toggle()
                            }
                        }) {
                            RoundedRectangle(cornerRadius: 24)
                                .fill(Color(#colorLiteral(red: 0.9546068311, green: 0.7819573283, blue: 0.3710157275, alpha: 1)))
                                .frame(width: 320, height: 65)
                                .overlay(
                                    Text("Check in again later")
                                     .font(.system(size: 24, weight: .regular, design: .serif))
                                        .foregroundColor(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
                                        .shadow(color: Color.orange.opacity(0.5), radius: 5, x: 5, y: 5)
                                        .shadow(color: Color.orange.opacity(0.5), radius: 5, x: -5, y: -5)
                                        .blur(radius: 0.1)

                                )
                        }
                    }
                    .sheet(isPresented: $show) {
                        
                        SecondView(show: $show, selected: $selected )
                    }
                    .padding(.bottom, 55)
                }
                .padding()
            }
        }
    }
}

struct Challenge2_Previews: PreviewProvider {
    static var previews: some View {
        Challenge2(selected: .constant("Prosperity"))
    }
}

struct CardView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15.0) {
            
            Text("😀")
                .font(.title)
            
            Text("458")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            Text("Feeling well")
                .foregroundColor(.green)
        }
        .frame(width: 180, height: 270)
        .background(Color(#colorLiteral(red: 0.9125601649, green: 0.9790691733, blue: 0.9616008401, alpha: 1)))
        .cornerRadius(55)
    }
}

struct CardView2: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15.0) {
            
            Text("☹️")
                .font(.title)
            
            Text("14")
                .font(.largeTitle)
                .foregroundColor(.black)
            
            Text("Not well")
                .foregroundColor(.black)
        }
        .frame(width: 180, height: 270)
        .background(Color(#colorLiteral(red: 0.9965139031, green: 0.9511083961, blue: 0.9441085458, alpha: 1)))
        .cornerRadius(55)
    }
}
