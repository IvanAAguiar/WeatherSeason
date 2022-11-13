//
//  HourlyForecastCell.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 13/11/2022.
//

import SwiftUI

struct HourlyForecastCell: View {
    let forecast: MainClass
    let date: String
    let icon: String
    
    var body: some View {
        
        
        VStack (spacing: 0) {
            Text(date)
                .font(.headline)
                .foregroundColor(.secondary)
            WeatherIcon(iconCode: icon, imageSize: 50)
            Text("\(forecast.temp.formatted())º")
                .font(.title3)
            
            HStack {
                Image(systemName: "drop")
                Text("\(forecast.humidity)%")
            }
            .font(.headline)
            .foregroundColor(.secondary)
        }
    }
}

struct HourlyForecastCell_Previews: PreviewProvider {
    static var previews: some View {
        HourlyForecastCell(forecast: Forecast.exemple.list.first!.main, date: "18:00:00", icon: "10d")
    }
}
