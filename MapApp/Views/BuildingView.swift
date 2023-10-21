//
//  ContentView.swift
//  MapApp
//
//  Created by Guest User on 05/10/2023.
//

import SwiftUI

struct BuildingView: View {
    @Binding var building: Building
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image("AGH")
                    .resizable()
                    .aspectRatio(CGSize(width:2, height: 1), contentMode: .fit)
                
                HStack {
                    Text("Budynek \(building.symbol)")
                        .font(.title)
                    Spacer()
                    Image(systemName: building.favourite ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                        .onTapGesture {
                            building.favourite.toggle()
                        }
                }
                Text(building.name)
                    .font(.title2)
                
                HStack {
                    Text(building.address)
                        .font(.title3)
                    Spacer()
                    if(building.wifi) {
                        Image(systemName: "wifi")
                    }
                    
                    if(building.handycap != Handycap.no){
                        Image(systemName: "figure.roll")
                            .foregroundColor(building.handycap == Handycap.yes ? .black : .gray)
                    }
                }.padding(.bottom)
                
                Text(building.description)
                    .font(.body)
                Spacer()
                Image("Map")
                    .resizable()
                    .aspectRatio(1/1, contentMode: .fit)
                    .frame(minWidth: 200, maxHeight: 200)
            }.padding()
        }
    }
}

#Preview {
    NavigationStack {
        BuildingView(building: .constant(Building.sampleData[0]))
    }
}
