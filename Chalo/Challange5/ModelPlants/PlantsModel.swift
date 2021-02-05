//
//  PlantsModel.swift
//  Chalo
//
//  Created by Andrej Kling on 04.02.21.
//

import Foundation


struct Plant : Identifiable {
    
    var id = UUID().uuidString
    var title : String
    var image : String
    var price : String
}

var plants = [
    
    Plant(title: "Samanta", image: "fl3", price: "$400"),
    Plant(title: "Angelika", image: "fl5", price: "$200"),
    Plant(title: "Montel", image: "fl2", price: "$540"),
    Plant(title: "Foster", image: "fl4", price: "$120")
   

]

var plants2 = [
    Plant(title: "Morris", image: "fl1", price: "$180"),
    Plant(title: "Wallet", image: "fl7", price: "$555"),
    Plant(title: "Kwintess", image: "fl6", price: "333")

]
