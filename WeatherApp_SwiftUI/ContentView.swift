//
//  ContentView.swift
//  WeatherApp_SwiftUI
//
//  Created by User on 03.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroudView(isNight: $isNight)
            VStack(spacing: 20) {
                CityTextView(cityName: "Kyiv, Ukraine")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 25)
                
                HStack(spacing: 20) {
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
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Timer",
                                  textColor: .blue,
                                  backgroundColor: .white)
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

struct BackgroudView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : Color("lightBlue")
                                                  ]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°C")
                .font(.system(
                    size: 70,
                    weight: .medium,
                    design: .rounded))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}


