//
//  EnviromentView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI


class EnviroUserSettings: ObservableObject {
    @Published var enviroScore = 0
}


struct EnviromentView: View {
    
    @EnvironmentObject var enviroSettings: EnviroUserSettings
    
    var body: some View {
        
        VStack {
            Text("\(enviroSettings.enviroScore)")
            
            Button(action: {
                self.enviroSettings.enviroScore += 1
            }) {
                Text("Increase Score")
            }
        }
        
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView()
    }
}
