//
//  ShapesView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        
        
        VStack {
            
            Rectangle()
                .fill(Color.black)
                .frame(width: 200, height: 200)
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 100, height: 50)
            
            Ellipse()
                .fill(Color.blue)
                .frame(width: 100, height: 50)
            
            Circle()
                .fill(Color.orange)
            .frame(width: 100, height: 50)
            
        }.navigationBarTitle(Text("Shapes"))
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
