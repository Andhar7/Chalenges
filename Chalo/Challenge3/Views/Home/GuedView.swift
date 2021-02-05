//
//  GuedView.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import SwiftUI

struct GuedView: View {
    
    var body: some View {
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 21.0) {
                
                Text("Guied")
                    .font(.system(size: 23, weight: .regular, design: .serif))
                    .foregroundColor(.gray)
                    .rotationEffect(.init(degrees: -90))
                
                ForEach(guideData) { items in
                    
                    GuedButtonView(item: items)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct GuedView_Previews: PreviewProvider {
    static var previews: some View {
        GuedView()
    }
}
