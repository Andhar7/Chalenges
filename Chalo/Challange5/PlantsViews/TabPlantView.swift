//
//  TabPlantView.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import SwiftUI

struct TabPlantView: View {
    
    var body: some View {
        
        HStack {
            
            ForEach(0 ..< 4) { item in
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                    .frame(width: 15, height: 5)
            }
            
        }
    }
}

struct TabPlantView_Previews: PreviewProvider {
    static var previews: some View {
        TabPlantView()
    }
}
