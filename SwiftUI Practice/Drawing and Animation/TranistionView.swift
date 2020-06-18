//
//  TranistionView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct TranistionView: View {
    
    @State private var showDetails = false
    
    var body: some View {
        
        VStack {

            
            Button(action: {
                withAnimation {
                    self.showDetails.toggle()
                }
            }) {
                Text("Tap to show Details")
                
                
            }
            
            
            if !showDetails {
                Image(systemName: "star.fill")
                .scaleEffect(2)
                .animation(.linear(duration: 90))
            }
    
            
            if showDetails {
                Group {
                Text("Move")
                    .transition(.move(edge: .bottom))
                    
                Spacer()
                Text("Slide")
                    .transition(.slide)
                Spacer()
                Text("Scale")
                    .transition(.scale)
                }
                Spacer()
                
                Group {
                
                Text("Opacity")
                    .transition(.opacity)
                
                Spacer()
                
                
                Text("Offest")
                    .transition(.offset())
                
                Spacer()
                }
                
                
                Text("Asymetric")
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                
                
               
                
            }
            
            
            
            
            Spacer()
        }
        
        
    }
}

struct TranistionView_Previews: PreviewProvider {
    static var previews: some View {
        TranistionView()
    }
}
