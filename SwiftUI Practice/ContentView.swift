//
//  ContentView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/16/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var street = ""
    @State private var city = ""
    
    @State private var selectedState = 0
    
    @State private var states = [
        "", "AL", "CA", "DE", "GA", "HI", "LA", "MO", "NY", "OK", "PE", "RI", "TX"
    ]
    
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    Divider()
                    VStack(alignment: .leading) {
                        if firstName.count > 0 && lastName.count > 0 && street.count > 0 && city.count > 0 && selectedState != 0 {
                            Text("\(firstName) \(lastName)")
                            Text(street)
                            Text("\(city), \(states[selectedState])")
                        }
                    }.padding(.all, 10)
                    Spacer()
                    
                    Form {
                        Section(header: Text("User Details")) {
                            TextField("First Name", text: $firstName)
                            TextField("Last Name", text: $lastName)
                        }
                        Section(header: Text("Address")) {
                            TextField("street", text: $street)
                            TextField("city", text: $city)
                            Picker(selection: $selectedState, label: Text("State")) {
                                ForEach(1 ..< states.count) { index in
                                    Text(self.states[index]).tag(index)
                                    
                                }
                            }
                        }
                    }
                    Spacer()
                }
        
                VStack {
                    NavigationLink(destination: SecondView(states: $states)) {
                        Text("To List View")
                    }.frame(height: 50)
                    NavigationLink(destination: TabViews()) {
                        Text("To Tabs View")
                    }.frame(height: 50)
                    
                }
                    
                }.navigationBarTitle("Home")
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
