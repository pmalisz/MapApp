//
//  CardView.swift
//  MapApp
//
//  Created by Guest User on 19/10/2023.
//

import SwiftUI
import MapKit

struct CardView: View {
    let building: Building
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Budynek \(building.symbol)")
                    .font(.headline)
                Spacer()
                Image(systemName: building.favourite ? "heart.fill" : "heart")
                    .foregroundColor(.red)
            }
            Spacer()
            HStack {
                Text(building.name)
                Spacer()
                
                if(building.wifi){
                    Image(systemName: "wifi")
                }
                
                if(building.handycap != Handycap.no){
                    Image(systemName: "figure.roll")
                        .foregroundColor(building.handycap == Handycap.yes ? .black : .gray)
                }
            }.font(.caption)
        }
        .padding()
        .foregroundColor(building.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var building = Building.sampleData[0]
    static var previews: some View {
        CardView(building: building)
            .background(building.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
