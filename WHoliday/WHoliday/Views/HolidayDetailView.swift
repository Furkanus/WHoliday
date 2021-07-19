//
//  HolidayDetailView.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/10/21.
//

import SwiftUI
struct HolidayDetailView: View {
    internal let holidays : Holiday!
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.bg2, Color.bg1]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                VStack {
                    Form {
                        Section(header: Text(Constants.Texts.infos).font(.system(size: 23)).foregroundColor(.white)  ) {
                            Text(Constants.Texts.localName + " " + holidays.localName)
                            Text(Constants.Texts.date + " " + holidays.date)
                            Text(Constants.Texts.name + " " + holidays.name)
                            
                            
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}


