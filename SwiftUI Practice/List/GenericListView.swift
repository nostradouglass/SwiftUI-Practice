//
//  GenericaListView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct GenericListView: View {
    
    var names = [
        "Casey",
        "Mike",
        "Jobin",
        "Pat",
        "Chris",
        "Liz",
        "Bob",
        "Philip",
        "Amanda",
        "Tabby",
        "Paul",
        "Nelly",
        "Aaron",
    ]
    
    
    var body: some View {
        List {
            ForEach(names, id: \.self) { name in
                NavigationLink(destination: ListDetailView(name: name)) {
                    Text(name)
                }
                
            }
        }.navigationBarTitle("Generic List View")
        
    }
}

struct GenericaListView_Previews: PreviewProvider {
    static var previews: some View {
        GenericListView()
    }
}
