//
//  DrawAnimateView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct DrawAnimateView: View {
    var body: some View {
        
        
        VStack {
            
            Spacer()
            
            NavigationLink(destination: ShapesView()) {
                Text("Shapes")
            }
            Spacer()
            NavigationLink(destination: PathView()) {
                Text("Paths")
            }
            Spacer()
            NavigationLink(destination: AnimateView()) {
                           Text("Animation")
                       }
            
            Spacer()
            
            NavigationLink(destination: TranistionView()) {
                           Text("Animate transitions between views")
                       }
            
            Spacer()
            
            
        }.navigationBarTitle(Text("Draw and Animate"))
    }
}

struct DrawAnimateView_Previews: PreviewProvider {
    static var previews: some View {
        DrawAnimateView()
    }
}
