//
//  GridView.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import SwiftUI

struct GridView: View {
    
    var columns = [
         GridItem(),
         GridItem()
    ]
  
    @Binding var selected : Place?
    @Binding var show : Bool
    var animation : Namespace.ID
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            LazyVGrid(columns: columns, spacing: 15) {
                
                ForEach(places) { item in
                    
                    GridItemView(place: item, animation: animation )
                        .onTapGesture {
                            withAnimation(.easeIn){
                                selected = item
                                show.toggle()
                            }
                        }
                    
                }
            }
            .padding()
        }
    }
}

struct GridView_Previews: PreviewProvider {
    
    @Namespace static var animation
    
    static var previews: some View {
        GridView( selected:.constant(places[0]), show: .constant(false), animation: animation)
    }
}
