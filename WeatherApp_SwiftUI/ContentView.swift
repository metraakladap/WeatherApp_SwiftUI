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
                Spacer()
                
                HStack(spacing: 15) {
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "cloud.sun.fill",
                                   temperature: 25)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "sun.max.fill",
                                   temperature: 33)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "wind.snow",
                                   temperature: 15)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "sunset.fill",
                                   temperature: 19)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "moon.stars.fill",
                                   temperature: 20)
                    
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



struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing : 6) {
            Text(dayOfWeek)
                .font(.system(
                    size: 24,
                    weight: .medium,
                    design: .rounded))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48)
            Text("\(temperature)°C")
                .font(.system(
                    size: 24,
                    weight: .medium,
                    design: .rounded))
                .foregroundColor(.white)
        }
    }
}
