//
//  WeatherIconView.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 13/11/2022.
//

import SwiftUI

struct WeatherIconView: View {
    let iconCode: String
    let imageSize: CGFloat = 50
    
    var body: some View {
        let iconUrl = "http://openweathermap.org/img/w/" + iconCode + ".png"
        
        AsyncImage(url: URL(string: iconUrl)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageSize, height: imageSize)
            } else if phase.error != nil {
                Text(phase.error?.localizedDescription ?? "error")
                    .foregroundColor(.pink)
            } else {
                ProgressView()
                    .frame(width: imageSize, height: imageSize)
            }
        }
    }
}

struct WeatherIconView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherIconView(iconCode: "04n")
    }
}
