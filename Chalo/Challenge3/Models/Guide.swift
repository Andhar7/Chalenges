//
//  Guide.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import Foundation

struct Guide: Identifiable {
    let id = UUID().uuidString
    var imageName: String
    var name: String
}

let guideData = [
    Guide(imageName: "avatar1", name: "Monica"),
    Guide(imageName: "avatar2", name: "Rachel"),
    Guide(imageName: "avatar3", name: "Phoebe"),
    Guide(imageName: "avatar4", name: "Ross"),
    Guide(imageName: "avatar5", name: "Joey")
]
