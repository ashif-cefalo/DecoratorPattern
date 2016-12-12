//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by Ashif Iqbal on 10/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let line = Line(point: [CGPoint(x: 0, y: 10), CGPoint(x: 10, y: 10)])
        let redLine = ColorShapedDecorator(shape: Line(point: [CGPoint(x: 0, y: 10), CGPoint(x: 10, y: 10)]))

        let redRectangle = ColorShapedDecorator(shape: Rectangle(point: [CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 4), CGPoint(x: 6, y: 0), CGPoint(x: 6, y: 4)]))
        
        if line.validate(){
            line.draw()
        }
        
        if redLine.validate(){
            redLine.draw()
        }
        
        if redRectangle.validate(){
            redRectangle.draw()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

