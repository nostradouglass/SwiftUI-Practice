//
//  ObserveObjectView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ObserveObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObserveObjectView()
    }
}

struct ObserveObjectView: View {
    
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Your Score is \(settings.score)")
            
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Add to Score")
            }
            
        }
    }
}





class UserSettings: ObservableObject {
    @Published var score = 0
}
