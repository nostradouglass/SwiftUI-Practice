//
//  FormView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct FormView: View {
    
    @State private var firstName = ""
      @State private var lastName = ""
      @State private var street = ""
      @State private var city = ""
      
      @State private var selectedState = 0
      
      @State private var states = [
          "", "AL", "CA", "DE", "GA", "HI", "LA", "MO", "NY", "OK", "PE", "RI", "TX"
      ]
      
      
    
    var body: some View {
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
            
                        
                }
            }
    }


struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
