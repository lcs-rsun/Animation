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
    
    var dx = 1
    var dy = 1
    var dx2 = -1
    var dy2 = 1
    var x = Int.random(in: 0...500)
    var y = Int.random(in: 0...500)
    var z = Int.random(in: 0...500)
    var k = Int.random(in: 0...500)
    

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //Draw with no trace
        canvas.drawShapesWithFill = true
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 250, y: 250), width: 500, height: 500, anchoredBy: .centre)
        
        //Movement
        x += dx
        y += dy
        z += dx2
        k += dy2
        
        //2 Circles
        canvas.drawShapesWithFill = false
        canvas.drawEllipse(at: Point(x: z, y: k), width: 250, height: 250)
        canvas.drawEllipse(at: Point(x: x, y: y), width: 100, height: 100)
        
        // Small Circle Bounce
        if x >= 500{
            dx = -1
        } else if x <= 0 {
            dx = 1
        } else if y >= 500 {
            dy = -1
        } else if y <= 0 {
            dy = 1
        }


        // Big Circle Bounce
        if z >= 500{
            dx2 = -1
        } else if z <= 0 {
            dx2 = 1
        } else if k >= 500 {
            dy2 = -1
        } else if k <= 0 {
            dy2 = 1
        }
        
        // Line between 2 circles
        let vertical = k-y
        let horizontal = z-x
        let SumOfSquares = vertical * vertical + horizontal * horizontal
        let distance = sqrt(Double(SumOfSquares))
       

        if  distance < 175 {
            canvas.drawLine(from: Point(x: z, y: k), to: Point(x: x, y: y))
        }
        
        
        
        
    }
    
}

