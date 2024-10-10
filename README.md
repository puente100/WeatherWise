# WeatherWise

**WeatherWise** is a weather application that provides real-time weather data based on the user's current location. Designed with simplicity and ease of use in mind, the app delivers essential weather information such as temperature, humidity, and wind speed right at your fingertips.

## Features

- **Current Weather**: Provides real-time weather data for the user’s current location, including temperature, humidity, wind speed, and more.
- **Location-Based Updates**: Automatically detects the user's current location using CoreLocation to display up-to-date weather information.
- **Dynamic UI**: Adjusts the UI based on current weather conditions, offering a tailored visual experience for different types of weather (e.g., sunny, rainy, cloudy).

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/puente100/WeatherWise.git
    ```
2. Open the project in Xcode.
3. Build and run the app on a simulator or an iOS device with iOS 15.0+.

## Technologies Used

- **Swift 5**
- **SwiftUI**: For building the user interface with responsive, dynamic views.
- **Combine Framework**: For managing asynchronous data flows and real-time updates to the UI.
- **CoreLocation**: To detect and use the device's current location for weather data.
- **REST API**: Fetches real-time weather data from the OpenWeather API.

## Requirements

- iOS 15.0+
- Xcode 14.0+
- Swift 5.0
- OpenWeather API Key (sign up at [OpenWeather](https://openweathermap.org/) to get an API key).

## How to Use

1. Upon opening the app, grant permission for location access to allow the app to retrieve your current weather data.
2. The app will automatically display the real-time weather conditions for your location, with updates as conditions change.

## API Integration

This app uses the **OpenWeather API** to retrieve weather data. To configure the API key:
1. Sign up at [OpenWeather](https://openweathermap.org/) and get your API key.
2. Add the API key to the project:
   ```swift
   let apiKey = "YOUR_API_KEY"
