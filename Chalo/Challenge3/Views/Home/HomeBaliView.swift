//
//  HomeBaliView.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import SwiftUI

struct HomeBaliView: View {
    
 
    @Binding var selected : Place!
    @Binding var show : Bool
    var animation : Namespace.ID
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12.0) {
            
            HomeTopView()
            
            Text("Place \nIndonesia")
                .font(.system(size: 33, weight: .regular, design: .serif))
                .foregroundColor(.gray)
            
            GuedView()
            
            GridView(selected: $selected, show: $show, animation: animation)
            
        }
        .padding()
    }
}

struct HomeBaliView_Previews: PreviewProvider {
    
    @Namespace static var animation
    
    static var previews: some View {
        HomeBaliView( selected: .constant(places[0]), show: .constant(false), animation: animation)
    }
}
