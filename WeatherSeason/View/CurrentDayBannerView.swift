//
//  CurrentDayBannerView.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 13/11/2022.
//

import SwiftUI

struct CurrentDayBannerView: View {
    let list: [List]
    
    var body: some View {
        let currentWeatherForecast = list.first!
        let currentWeatherIcon = currentWeatherForecast.weather.first!.icon
        
        VStack {
            VStack (alignment: .leading) {
                VStack {
                    Text(currentWeatherForecast.dtTxt)
                        .font(.headline)
                        .foregroundColor(.secondary)
                }
                
                HStack {
                    WeatherIcon(iconCode: currentWeatherIcon, imageSize: 65)
                    
                    Text("\(currentWeatherForecast.main.temp.formatted())º")
                        .font(.title)
                     Spacer()
                    
                    VStack (alignment: .trailing){
                        Text(currentWeatherForecast.weather.first!.weatherDescription)
                            .bold()
                        MaxAndMin(
                            max: currentWeatherForecast.main.tempMax, min: currentWeatherForecast.main.tempMin
                        )
                        Text("feels like \(currentWeatherForecast.main.feelsLike.formatted())º")
                    }
                    .font(.headline)
                    .foregroundColor(.secondary)
                }
                
                HStack {
                    ForEach(1..<6) { forecast in
                        HourlyForecastCell(
                            forecast: list[forecast].main,
                            date: list[forecast].dtTxt,
                            icon: list[forecast].weather.first!.icon
                        )
                    }
                }
            }
            
            Button("More") {
                
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .padding()
        .frame(maxHeight: 300)
        .background(.white)
        .cornerRadius(10)
    }
}

struct CurrentDayBannerView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentDayBannerView(list: Forecast.exemple.list)
    }
}
