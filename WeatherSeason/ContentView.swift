//
//  ContentView.swift
//  WeatherSeason
//
//  Created by Ivan Aguiar on 11/11/2022.
//

import SwiftUI

struct ContentView: View {
    let exemple: Forecast = Bundle.main.decode("forecast.json")
    
    var body: some View {
        VStack {
            ForEach(exemple.list, id: \.dt) { forecast in
                Text("\(forecast.main.tempMax)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
