//
//  LoadingView.swift
//  WeatherWise
//
//  Created by Daniel Puente on 7/17/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .tint(.white)
            .frame(minWidth: .infinity, idealWidth: .infinity)
    }
}

#Preview {
    LoadingView()
}
