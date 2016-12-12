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
        let coloredLine = ColorShapedDecorator(shape: Line(point: [CGPoint(x: 0, y: 10), CGPoint(x: 10, y: 10)]), color: "red")

        let coloredRectangle = ColorShapedDecorator(shape: Rectangle(point: [CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 10), CGPoint(x: 20, y: 0), CGPoint(x: 20, y: 10)]), color: "blue")
        
        if line.validate(){
            line.draw()
        }
        
        if coloredLine.validate(){
            coloredLine.draw()
        }
        
        if coloredRectangle.validate(){
            coloredRectangle.draw()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

