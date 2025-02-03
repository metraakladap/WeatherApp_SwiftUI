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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack {
                Text("Kyiv, Ukraine")
                    .font(.system(size: 32, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.all, 32)
                Spacer()
                
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
