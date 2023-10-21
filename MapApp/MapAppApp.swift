//
//  MapAppApp.swift
//  MapApp
//
//  Created by Guest User on 05/10/2023.
//

import SwiftUI

@main
struct MapAppApp: App {
    @State private var buildings = Building.sampleData
    
    var body: some Scene {
        WindowGroup {
            BuildingsView(buildings: $buildings)
        }
    }
}
