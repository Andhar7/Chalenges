//
//  MainBaliView.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import SwiftUI

struct MainBaliView: View {
    
    @State private var selected : Place!
    @State private var show = false
    @Namespace var animation
    
    var body: some View {
        
        ZStack {
            
            HomeBaliView(selected: $selected, show: $show, animation: animation)
            
            if selected != nil && show {
                
                DetailBaliView(selected: $selected, show: $show, animation: animation)
                
            }
        }
    }
}

struct MainBaliView_Previews: PreviewProvider {
    static var previews: some View {
        MainBaliView()
    }
}
