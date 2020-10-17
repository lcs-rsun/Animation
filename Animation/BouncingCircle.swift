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
class BouncingCircle: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    var dx = 1
    var dy = 1
    var x = Int.random(in: 0...500)
    var y = Int.random(in: 0...500)

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 250, y: 250), width: 500, height: 500, anchoredBy: .centre)
        
        
        x += dx
        y += dy
        canvas.fillColor = Color.black
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        
        if x >= 500{
            dx = -1
        } else if x <= 0 {
            dx = 1
        } else if y >= 500 {
            dy = -1
        } else if y <= 0 {
            dy = 1
        }

        
        
    }
    
}

