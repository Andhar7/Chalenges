//
//  Place.swift
//  Chalo
//
//  Created by Andrej Kling on 02.02.21.
//

import Foundation

struct Place: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

let places = [
    Place(image: "image1", title: "Bali"),
    Place(image: "image2", title: "Klingking Bea"),
    Place(image: "image3", title: "Bali"),
    Place(image: "image4", title: "Nusa Penida")
]
