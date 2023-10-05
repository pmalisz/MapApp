//
//  ContentView.swift
//  MapApp
//
//  Created by Guest User on 05/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("AGH")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
            
            Spacer()
            VStack() {
                ProgressView(value: 5, total: 15)
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            }.padding()
        }
        
    }
}

#Preview {
    ContentView()
}
