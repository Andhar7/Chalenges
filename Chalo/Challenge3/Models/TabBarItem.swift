//
//  TabBarItem.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import Foundation

struct TabBarItem: Identifiable {
    let id = UUID().uuidString
    var imageName: String
    var title: String
}

let tabBarItems = [
    TabBarItem(imageName: "house", title: "Home"),
    TabBarItem(imageName: "magnifyingglass", title: "Search"),
    TabBarItem(imageName: "bell", title: "Messages"),
    TabBarItem(imageName: "star", title: "Star")
]
