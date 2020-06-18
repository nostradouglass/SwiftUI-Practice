//
//  AnimateView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct AnimateView: View {
    
    @State private var scale: CGFloat = 1
    @State private var angle: Double = 0
    
    @State private var borderThickness: CGFloat = 1
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Button(action: {
                self.scale += 1
            }) {
                Text("Tap Here")
                    .scaleEffect(scale)
                    .animation(.linear)
            }
            
            Spacer()
            
            Button (action: {
                self.angle += 45
                self.borderThickness += 1
            }) {
                Text("Tap Here")
                    .padding()
                    .border(Color.red, width: borderThickness)
                    .rotationEffect(.degrees(angle))
                    .animation(.easeIn)
            }
            
            Spacer()
        }
    }
}

struct AnimateView_Previews: PreviewProvider {
    static var previews: some View {
        AnimateView()
    }
}
