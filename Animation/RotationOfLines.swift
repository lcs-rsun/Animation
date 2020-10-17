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
class RotationOfLines: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        //Lines are thick
        canvas.defaultLineWidth = 20
        
        //Slow things down
        canvas.framesPerSecond = 1
        
        

    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //Translate the origin to the middle of the cavas
        canvas.translate(to: Point(x: 250, y: 250))
        
        
        //Rotate the canvas
        canvas.rotate(by: Degrees(canvas.frameCount * 10))
//        canvas.drawAxes()
        
        // Set the color
        canvas.lineColor = Color.init(hue: canvas.frameCount * 10, saturation: 80, brightness: 90, alpha: 75)
        
        //Draw a line
        canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 200, y: 0))
    }
    
}

