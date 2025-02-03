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
            VStack(spacing: 20) {
                Text("Kyiv, Ukraine")
                    .font(.system(size: 32, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("25°C")
                        .font(.system(
                            size: 70,
                            weight: .medium,
                            design: .rounded))
                        .foregroundColor(.white)
                }
                
                HStack(spacing: 15) {
                    VStack(spacing : 6) {
                        Text("Mon")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 48, height: 48)
                        Text("25°C")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                    }
                    VStack(spacing : 6) {
                        Text("Mon")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 48, height: 48)
                        Text("25°C")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                    }
                    VStack(spacing : 6) {
                        Text("Mon")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                        Image(systemName: "wind")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 48, height: 48)
                        Text("25°C")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                    }
                    VStack(spacing : 6) {
                        Text("Mon")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                        Image(systemName: "sunset.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 48, height: 48)
                        Text("25°C")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                    }
                    VStack(spacing : 6) {
                        Text("Mon")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                        Image(systemName: "moon.stars.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 48, height: 48)
                        Text("25°C")
                            .font(.system(
                                size: 24,
                                weight: .medium,
                                design: .rounded))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
            
            
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
