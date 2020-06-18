//
//  ListDetailView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ListDetailView: View {
    
    var name : String
    
    var body: some View {
        Text("Hello \(name)")
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(name: "Kelly")
    }
}
