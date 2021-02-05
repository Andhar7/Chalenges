//
//  ContentView.swift
//  Chalo
//
//  Created by Andrej Kling on 24.01.21.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var namespace
    @Namespace var cool
    @Namespace var animation
    @State private var selected = "Prosperity"
    @State private var selection : Tab = .first
        
        enum Tab {
            case first
            case second
            case third
            case forth
            case five
        }
        
        var body: some View {
            
            TabView(selection: $selection) {
                Challenge1()
                    .tabItem {
                        Label("Challenge1", systemImage: "star")
                    }
                    .tag(Tab.first)
                
                Challenge2(selected: $selected)
                    .tabItem {
                        Label("Challenge2", systemImage: "list.bullet")
                    }
                    .tag(Tab.second)
                MainBaliView(animation: _animation)
                    .tabItem {
                        Label("Challenge3", systemImage: "star")
                    }
                    .tag(Tab.third)
                
                MainBullView(namespace: namespace)
                    .tabItem {
                        Label("Challenge4", systemImage: "list.bullet")
                    }
                    .tag(Tab.forth)
                FrontPlantView(cool: cool)
                    .tabItem {
                        Label("Challenge5", systemImage: "list.bullet")
                    }
                    .tag(Tab.five)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        ContentView()
    }
}

// MainBullView(namespace: namespace)
//  FrontPlantView(cool: cool)
