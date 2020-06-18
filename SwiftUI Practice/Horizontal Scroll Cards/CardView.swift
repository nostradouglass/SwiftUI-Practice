//
//  CardView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var title: String
    var image: String
    var color: Color
    var shadowColor: Color
    
    var body: some View {
        
        
        VStack(alignment: .leading) {

            Text(self.title)
                .font(.system(size: 23))
                .fontWeight(.bold)
                .lineSpacing(7)
                .frame(width: 160, alignment: .leading)
                .foregroundColor(Color.white)
                .padding(.horizontal, 40)
                .padding(.top, 20)
                .padding(.bottom, 0)
            
                Image("randomVector")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .offset(x: 20)
            
                Spacer()
            
            }
        .frame(width: 200, height: 300)
        .background(self.color)
        .cornerRadius(30)
        .shadow(color: self.shadowColor.opacity(0.4), radius: 4, x: 0, y: 5)
        
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Build an App with SwiftUI", image: "Test", color: Color.blue, shadowColor: Color.black)
            .previewLayout(.fixed(width: 300, height: 400))
    }
}
