//
//  ModelRedBull.swift
//  Chalo
//
//  Created by Andrej Kling on 03.02.21.
//

import Foundation
import SwiftUI

struct RedBull: Identifiable {
    var id = UUID().uuidString
    var backgroundColor: Color
    var title: String
    var subtitle: String
    var price: String
    var image: String
}

let redbull = [
    RedBull(backgroundColor: Color(#colorLiteral(red: 0.0979558304, green: 0.1926653981, blue: 0.6239119172, alpha: 1)), title: "CLASSIC", subtitle: "ENERGY DRINK", price: "$2.99", image: "redbull"),
    RedBull(backgroundColor: Color(#colorLiteral(red: 0.05730711669, green: 0.5047739744, blue: 0.7162055373, alpha: 1)), title: "BEST CLASS", subtitle: "SUGAR FREE", price: "$2.10", image: "redbull2"),
    RedBull(backgroundColor: Color(#colorLiteral(red: 0.8980103135, green: 0.3609646559, blue: 0.110781543, alpha: 1)), title: "ALL NEW", subtitle: "FESTIVAL EDITION", price: "$3.50", image: "orange")
]
