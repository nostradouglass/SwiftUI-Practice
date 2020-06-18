//
//  Course.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import Foundation
import SwiftUI

class Course {
    
    var title : String = ""
    var image : String = ""
    var color : Color
    var shadowColor : Color
    
    
    init(title: String, image: String, color: Color, shadowColor: Color) {
        self.title = title
        self.image = image
        self.color = color
        self.shadowColor = shadowColor
    }
    
    
    
    
}
