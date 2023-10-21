//
//  BuildingsView.swift
//  MapApp
//
//  Created by Dawid on 21/10/2023.
//

import SwiftUI

struct BuildingsView: View {
    @Binding var buildings: [Building]
        
    var body: some View {
        NavigationStack {
            List($buildings, id: \.symbol) { $building in
                NavigationLink(destination: BuildingView(building: $building)) {
                    CardView(building: building)
                }
                .listRowBackground(building.theme.mainColor)
            }
            .navigationTitle("Lista budynków")
        }
    }
}

#Preview {
    BuildingsView(buildings: .constant(Building.sampleData))
}
