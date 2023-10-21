//
//  Theme.swift
//  MapApp
//
//  Created by Guest User on 19/10/2023.
//

import SwiftUI


enum Theme: String {
    case orange
    case purple
    case yellow
    
    var accentColor: Color {
        switch self {
        case .orange, .yellow: return .black
        case .purple: return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
}
