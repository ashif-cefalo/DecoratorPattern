//
//  Shape.swift
//  DecoratorPattern
//
//  Created by Ashif Iqbal on 10/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

protocol Shape {
    func validate() -> Bool
    func draw()
}
