//
//  SecondView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ListsView: View {
    
    @Binding  var states: [String]
    
    var body: some View {
        
        List {
            ForEach(states, id: \.self) { state in
                Text(state)
                
            }
        }.navigationBarTitle("List View")
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        ListsView(states: Binding.constant(["OK"]))
    }
}
