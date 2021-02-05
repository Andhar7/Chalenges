//
//  FrontPlantView.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import SwiftUI

struct FrontPlantView: View {
    
    @State private var selection : Plant!
    @State private var shows = false
    var cool : Namespace.ID
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
                TopPlantView()
                
                TopTitlePlantView()
                    .offset(y: -300)
                
                ZStack {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack {
                            
                            Spacer(minLength: 155)
                      
                            SectionPlantView(title: "Recomended")
                                .padding(.top, 85)
         
                            ScrollView(.horizontal, showsIndicators: false){
                                
                                HStack(spacing: 15) {
                                    
                                    ForEach(plants) { plant in
                                        
                                        CardFrontPlantView(plant: plant, cool: cool)
                                            .onTapGesture{
                                                withAnimation(.easeIn){
                                                    selection = plant
                                                    shows.toggle()
                                                }
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                        SectionPlantView(title: "Featured Plants")
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            HStack(spacing: 15) {
                                
                                ForEach(plants2) { plant2 in
                                    
                                    CardFrontPlantView(plant: plant2, cool: cool)
                                        .padding(.bottom, 55)
                                        .onTapGesture{
                                            withAnimation(.easeIn){
                                                selection = plant2
                                                shows.toggle()
                                            }
                                    }
                                }
                            }
                            .padding()
                        }
                    }
                }
                if selection != nil && shows {
                    
                    DetailPlantView(selection: $selection, shows: $shows, cool: cool)
                }
            }
        }
    }
}

struct FrontPlantView_Previews: PreviewProvider {
    
    @Namespace static var cool
    
    static var previews: some View {
        FrontPlantView(cool: cool)
    }
}
