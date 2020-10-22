//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class LineFromCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Create two circles
    var small: MovingCircle
    var large: MovingCircle

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        //Randomly pick a horizontal direction
        var dx = 1
        if Bool.random() == true{
            dx *= -1
        }
                
        //Randomly pick a vertical object
        var dy = 1
        if Bool.random() == true {
            dy *= -1
        }
        
        // Initialize circles
        small = MovingCircle(x: Int.random(in: 0...500),
                             y: Int.random(in: 0...500),
                             dx: dx,
                             dy: dy,
                             size: Int.random(in: 50...400))
                
        large = MovingCircle(x: Int.random(in: 0...500),
                             y: Int.random(in: 0...500),
                             dx: 1,
                             dy: -1,
                             size: Int.random(in: 50...400))
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //Draw with no trace
        canvas.drawShapesWithFill = true
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 250, y: 250), width: 500, height: 500, anchoredBy: .centre)

        //Movement
        small.update(on: canvas)
        large.update(on: canvas)
        
        // Calculate the distance between circles
        let distance = small.distanceTo(other: large)
        
//        // Line between 2 circles
//        let vertical = k-y
//        let horizontal = z-x
//        let SumOfSquares = vertical * vertical + horizontal * horizontal
//        let distance = sqrt(Double(SumOfSquares))
//
//
        if Int(distance) < small.size / 2 + large.size / 2 {
            let value = map(value: distance, fromLower: 0, fromUpper: 175, toLower: 10, toUpper: 30)
            canvas.lineColor = Color.init(hue: 0, saturation: 80, brightness: Int(value) * 3, alpha: Int(value))
            canvas.drawLine(from: Point(x: small.x, y: small.y), to: Point(x: large.x, y: large.y))
        }
//
//
        
        
    }
    


}
