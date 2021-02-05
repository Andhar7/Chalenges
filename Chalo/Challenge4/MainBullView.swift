//
//  MainBullView.swift
//  Chalo
//
//  Created by Andrej Kling on 03.02.21.
//

import SwiftUI

struct MainBullView: View {
    
   
    @State private var isSelected : RedBull!
    @State private var showDetail = false
    var namespace : Namespace.ID
    
    var body: some View {
        
        ZStack {
            
            VStack  {
                
                VStack {
                    
                    TitleRedView()
                    
                    ScrollTopView()
                }
                ScrollView(.vertical, showsIndicators: false){
                    
                    ForEach(redbull) { item in
                        
                        CardBulView(bull: item, namespace: namespace)
                            .onTapGesture {
                                withAnimation(.easeIn){
                                    isSelected = item
                                    showDetail.toggle()
                                }
                            }
                    }
                }
            }
            if isSelected != nil && showDetail {
                
                DetailBulView(isSelected: $isSelected, showDetail: $showDetail, namespace: namespace)
            }
        }
    }
}

struct MainBullView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        MainBullView(namespace: namespace)
    }
}
