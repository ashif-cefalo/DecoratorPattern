//
//  ShapeDecorator.swift
//  DecoratorPattern
//
//  Created by Ashif Iqbal on 11/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class ShapeDecorator: Shape {

    let decoratedShape : Shape
    
    init(shape: Shape) {
        self.decoratedShape = shape
    }
    
    func validate() -> Bool{
        return self.decoratedShape.validate()
    }
    
    func draw(){
        self.decoratedShape.draw()
    }
}
