//
//  WeatherIcon.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 13/11/2022.
//

import SwiftUI

struct WeatherIcon: View {
    let iconCode: String
    let imageSize: CGFloat
    
    var body: some View {
        let iconUrl = "http://openweathermap.org/img/w/" + iconCode + ".png"
        
        AsyncImage(url: URL(string: iconUrl)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFill()
            } else if phase.error != nil {
                Text(phase.error?.localizedDescription ?? "error")
                    .foregroundColor(.pink)
            } else {
                ProgressView()
            }
        }
        .frame(maxWidth: imageSize, maxHeight: imageSize)
    }
}

struct WeatherIcon_Previews: PreviewProvider {
    static var previews: some View {
        WeatherIcon(iconCode: "04n", imageSize: 100)
    }
}
