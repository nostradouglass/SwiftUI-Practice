//
//  TabViews.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        
        
        TabView {
            TabOneView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Tab 1")
            }
            TabTwoView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Tab 2")
            }
            
        }
        .font(.headline)
        }
    }


struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
