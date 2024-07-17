//
//  WelcomeView.swift
//  WeatherWise
//
//  Created by Daniel Puente on 7/17/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            VStack (spacing: 20) {
                Text("Welcome to WeatherWise")
                    .bold().font(.title)
                Text("Share your current location to get the weather ")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        
    }
}

#Preview {
    WelcomeView()
}
