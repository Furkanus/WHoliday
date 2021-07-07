//
//  ContentView.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var dat = [Holiday]()
    @StateObject private var getData = ServiceClient()
    @State private var isString = ""
    @State private var showAlert : Bool = false
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.bg1 , Color.bg2]), startPoint: .bottomLeading, endPoint: .topTrailing).edgesIgnoringSafeArea(.all)
            
            ZStack {
               VStack {
                Spacer()

                    TextField(Constants.Texts.enterCountry, text: $isString)
                        .textFieldStyle(OvalTextField())

                    Button(Constants.Texts.fetch) {
                        switch self.isString.isEmpty {
                    case .BooleanLiteralType(true):
                        self.showAlert = true

                        default:
                            getData.getData(year: "2021", countryCode: isString ) { result  in 
                                switch result {
                               case .success(let holiday):
                                    DispatchQueue.main.async {
                                      self.dat = holiday
                                        print(dat)
                                    }
                                default:
                                    break;
                                }
                           }
                        }

                        


                    }.alert(isPresented: $showAlert, content: {
                        return Alert(title: Text(Constants.Texts.Error.oops) , message: Text(Constants.Texts.Error.occured) , dismissButton: .default(Text(Constants.Texts.Error.ok)))
                    })
                    .buttonStyle(OvalButton())

                    Spacer()

                        .padding(.bottom , 30)
                }.frame(width: UIScreen.main.bounds.size.width * 0.7, height: UIScreen.main.bounds.size.height * 0.8)

                
                ZStack {
                    VStack {
                        Spacer()
                        
                        List(dat , id: \.self) { holiday in
                            HStack(spacing : 10) {
                                Text(holiday.localName)
                            }
                        }
                       
                    }.padding(.top , 60)
                    .frame(height: UIScreen.main.bounds.width / 1.2)
                }
                
            }
            
           
            
        }.onAppear {
            DispatchQueue.main.async {
                getData.getData(year: "2021", countryCode: "\(LocationManager.shared.getCountryInfo())" ) { result  in
                    switch result {
                    case .success(let holiday):
                        DispatchQueue.main.async {
                          self.dat = holiday
                            print(dat)
                        }
                    default:
                        break;
                    }
                }
            }
            
            print(LocationManager.shared.getCountryInfo())
          
        }
    }
}
