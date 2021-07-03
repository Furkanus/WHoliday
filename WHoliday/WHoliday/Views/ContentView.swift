//
//  ContentView.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/3/21.
//

import SwiftUI

struct ContentView: View {
    private let locationManager = LocationManager()
    var body: some View {
        ZStack {
            
            
        }.onAppear {
            print("Curreny country is \(LocationManager.shared.getCountryInfo())")
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
