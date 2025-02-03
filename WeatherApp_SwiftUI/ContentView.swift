//
//  ContentView.swift
//  WeatherApp_SwiftUI
//
//  Created by User on 03.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                HStack {
                    Text("Hello,World!")
                    Text("Hello,World!")
                }
                
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
