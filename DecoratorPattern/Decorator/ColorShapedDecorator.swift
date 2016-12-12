//
//  ColorShapedDecorator.swift
//  DecoratorPattern
//
//  Created by Ashif Iqbal on 11/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class ColorShapedDecorator: ShapeDecorator {
    required init(shape: Shape) {
        super.init(shape: shape)
    }
    
    override func draw() {
        self.decoratedShape.draw()
        setBorderColor()
    }
    
    override func validate() -> Bool {
        return self.decoratedShape.validate()
    }
    
    func setBorderColor(){
        print("border colored")
    }
}
