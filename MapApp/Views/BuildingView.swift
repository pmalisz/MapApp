//
//  ContentView.swift
//  MapApp
//
//  Created by Guest User on 05/10/2023.
//

import SwiftUI

struct BuildingView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("AGH")
                    .resizable()
                    .aspectRatio(CGSize(width:2, height: 1), contentMode: .fit)
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    Text("Budynek C-2")
                        .font(.title)
                    Text("Oficjalna nazwa")
                        .font(.title2)
                    HStack {
                        Text("Adres")
                            .font(.title3)
                        Spacer()
                        Image(systemName: "wifi")
                        Image(systemName: "figure.roll")
                    }.padding(.bottom)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse maximus auctor mauris. Vestibulum pellentesque, nisl elementum varius porta, enim magna fermentum nulla, quis auctor ipsum sapien ut metus. In vitae nunc vel urna viverra fringilla a ut augue. Donec eu pharetra felis. Integer scelerisque metus sem, in dictum ligula fringilla imperdiet. Quisque ut congue lorem. Curabitur nec diam sed tellus cursus auctor. Praesent pulvinar urna non mi vestibulum iaculis. Cras et tortor in dolor semper tincidunt eu eu nunc. Cras arcu mi, blandit id egestas ac, ornare id lorem. Donec mattis lacus et libero auctor, ut commodo diam maximus. Proin eu quam vitae nunc viverra efficitur.")
                        .font(.body)
                    Spacer()
                    VStack(alignment: .center){
                        Image("Map")
                            .resizable()
                            .aspectRatio(CGSize(width:1, height: 1), contentMode: .fill)
                    }
                    .frame(width: 200.0, height: 200.0)
                }.padding()
            }
        }
    }
}

#Preview {
    BuildingView()
}
