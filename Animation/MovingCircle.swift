//
//  MovingCircle.swift
//  Animation
//
//  Created by Ruby Sun on 2020-10-21.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

class MovingCircle {
    
    //1.Properties

    //Describe information we need to create the moving circle
    
    //Position
    var x: Int
    var y: Int
    
    //Change in position
    var dx: Int
    var dy: Int
    var size: Int
    
    //2. Initializer
    // Gives the information a stating value
    init(x: Int, y: Int, dx: Int, dy: Int, size: Int) {
        
        // Initilize the values
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.size = size
    }
    
    //3. Methods
    // DEscribe the behaviors (things we want to have happen)
    
    func update(on canvas: Canvas) {
        
        x += dx
        y += dy

        canvas.drawShapesWithFill = false
//        canvas.drawEllipse(at: Point(x: x, y: y), width: size, height: size)

        // Small Circle Bounce
        if x >= 500{
            dx = Int.random(in: 1...3) * -1
        } else if x <= 0 {
            dx = Int.random(in: 1...3)
        } else if y >= 500 {
            dy = -1
        } else if y <= 0 {
            dy = 1
        }

    }
    
    // Find my distance to the other circles
    func distanceTo(other: MovingCircle) -> Double {
        //Calculate the distance between circles
        let horizontal = self.x - other.x
        let vertical = self.y - other.y
        
        let d = sqrt(Double(horizontal * horizontal + vertical * vertical))
        
        return d
    }
    
    // Draw a line between me and the other circle when overlappping
    func drawWhenOverlapping(other: MovingCircle, on canvas: Canvas) {
        
        // Calculate the distance between circles
        let distance = self.distanceTo(other: other)
        
//        // Line between 2 circles
//        let vertical = k-y
//        let horizontal = z-x
//        let SumOfSquares = vertical * vertical + horizontal * horizontal
//        let distance = sqrt(Double(SumOfSquares))
//
//
        if Int(distance) < self.size / 2 + other.size / 2 {
            let value = map(value: distance, fromLower: 0, fromUpper: 175, toLower: 10, toUpper: 30)
            canvas.lineColor = Color.init(hue: Int(value * 10), saturation: 80, brightness: 90, alpha: Int(value))
            canvas.drawLine(from: Point(x: self.x, y: self.y), to: Point(x: other.x, y: other.y))
        }
    }
}
