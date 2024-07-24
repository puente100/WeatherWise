//
//  WeatherManager.swift
//  WeatherWise
//
//  Created by Daniel Puente on 7/18/24.
//

import Foundation
import CoreLocation

class WeatherManager {
    func getCurentWeather (latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\("308689c1f9b5c5b5b059855e16c161e5")&units=metric") else {fatalError("missing URL")}
            
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error fetching weather data") }
           
       let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
        
        return decodedData
    }
}




