//
//  ContentView.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.bg1 , Color.bg2]), startPoint: .bottomLeading, endPoint: .topTrailing).edgesIgnoringSafeArea(.all)
            ZStack {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
