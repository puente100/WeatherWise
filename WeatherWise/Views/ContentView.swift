//
//  ContentView.swift
//  WeatherWise
//
//  Created by Daniel Puente on 7/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location  = locationManager.location {
                Text("Your cordenates are: \(location.latitude), \(location.longitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.61, saturation: 1.0, brightness: 0.688))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}


#Preview {
    ContentView()
}
