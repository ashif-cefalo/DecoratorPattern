//
//  Line.swift
//  DecoratorPattern
//
//  Created by Ashif Iqbal on 10/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit
import Foundation

class Line: Shape {
    let points : [CGPoint]
    
    required init(point: [CGPoint]) {
        self.points = point
    }
    
    func validate() -> Bool{
        if points.count == 2{
            if points[0].x != points[1].x || points[0].y != points[1].y{
                return true
            }
        }
        print("invalid input for Lines")
        return false
    }
    
    func draw(){
        print("draw line")
    }
}
