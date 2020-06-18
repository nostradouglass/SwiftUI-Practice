//
//  HorzScrollCards.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI





struct HorzScrollCards: View {
    
    var courses : [Course] = [
        Course(title: "Build an App with SwiftUI", image: "arch", color: Color.red, shadowColor: Color.orange),
        Course(title: "Design and Animate", image: "Frog", color: Color.green, shadowColor: Color.yellow),
        Course(title: "Flutter For Designers", image: "plusSign", color: Color.blue, shadowColor: Color.black),
        Course(title: "Framer Playground", image: "plusSign", color: Color.blue, shadowColor: Color.black),
        Course(title: "Build an App with SwiftUI", image: "arch", color: Color.red, shadowColor: Color.orange),
        Course(title: "Design and Animate", image: "Frog", color: Color.green, shadowColor: Color.yellow),
        Course(title: "Flutter For Designers", image: "plusSign", color: Color.blue, shadowColor: Color.black),
        Course(title: "Framer Playground", image: "plusSign", color: Color.blue, shadowColor: Color.black)
    ]
    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(courses, id: \.image) { course in
                        
                        GeometryReader { geometry in
                            CardView(
                                title: course.title,
                                image: course.image,
                                color: course.color,
                                shadowColor: course.shadowColor
                            )
                                .rotation3DEffect(
                                    Angle(
                                        degrees: Double((geometry.frame(in: .global).minX - 70) / 20 )),
                                    axis: (x: 2.0, y: 3.0, z: 2.0))
                            
                        }.frame(width: 220, height: 300).offset(x: 50)
                        
                    }
                }.padding(.top, 100)
                    .padding(.horizontal, 40)
                Spacer()
            }
        }
        .background(Color(.sRGB, red: 0.4, green: 0.4, blue: 0.4, opacity: 0.1))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct HorzScrollCards_Previews: PreviewProvider {
    static var previews: some View {
        HorzScrollCards()
    }
}
