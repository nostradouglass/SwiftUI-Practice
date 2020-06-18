//
//  PathView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        
        SpiroSquare()
        .stroke()
        .frame(width: 200, height: 200)
    }
}

struct SpiroSquare : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let rotations = 5
        let amount = .pi / CGFloat(rotations)
        let transform = CGAffineTransform(rotationAngle: amount)
        
        for _ in 0 ..< rotations {
            path = path.applying(transform)
            
            path.addRect(CGRect(x: -rect.width / 2, y: -rect.height / 2, width: rect.width, height: rect.height))
        }
        return path
    }
}


struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
    }
}
