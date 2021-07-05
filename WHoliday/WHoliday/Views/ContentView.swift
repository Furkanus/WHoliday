//
//  ContentView.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var dat : [Holiday] = []
    @StateObject private var getData = ServiceClient()
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        
    }
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.bg1 , Color.bg2]), startPoint: .bottomLeading, endPoint: .topTrailing).edgesIgnoringSafeArea(.all)
            
            ZStack {
                
               
            }
            
            
        }.onAppear {
            DispatchQueue.main.async {
                getData.getData(year: "2021", countryCode: "TR") { result  in
                    switch result {
                    case .success(let holiday):
                        DispatchQueue.main.async {
                          self.dat = holiday 
                            print(holiday)
                        }
                    default:
                        break;
                    }
                }
            }
        }
    }
}
