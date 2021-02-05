//
//  HomeContentView.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import SwiftUI

struct HomeTopView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(action: {}, label: {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 21, height: 21)
                })
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 21, height: 21)
                })
            }
            .foregroundColor(.gray)
            .padding()
 
        }
    }
}

struct HomeTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopView()
    }
}
