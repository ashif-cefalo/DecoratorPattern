//
//  Rectangle.swift
//  DecoratorPattern
//
//  Created by Ashif Iqbal on 10/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit
import Foundation

class Rectangle: Shape {

    let points : [CGPoint]
    
    required init(point: [CGPoint]) {
        self.points = point
    }
    
    func validate() -> Bool{
        
        if points.count == 4{
            var cx : CGFloat
            var cy : CGFloat
            
            var dd1 : Double
            var dd2 : Double
            var dd3 : Double
            var dd4 : Double
            
            cx = (points[0].x + points[1].x + points[2].x + points[3].x)/4
            cy = (points[0].y + points[1].y + points[2].y + points[3].y)/4
            
            dd1 = sqrt(abs(Double(cx) - Double(points[0].x))) + sqrt(abs(Double(cy) - Double(points[0].y)))
            dd2 = sqrt(abs(Double(cx) - Double(points[1].x))) + sqrt(abs(Double(cy) - Double(points[1].y)))
            dd3 = sqrt(abs(Double(cx) - Double(points[2].x))) + sqrt(abs(Double(cy) - Double(points[2].y)))
            dd4 = sqrt(abs(Double(cx) - Double(points[3].x))) + sqrt(abs(Double(cy) - Double(points[3].y)))
            
            return dd1==dd2 && dd1==dd3 && dd1==dd4
        }
        print("invalid input for rectangle")
        return false
    }
    
    func draw(){
        print("draw rectangle")
    }
}
