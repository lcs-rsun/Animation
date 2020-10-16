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
class FourCorners: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    var x = 250
    var y = 250
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
       
        canvas.drawShapesWithBorders = false
        x += 1
        y += 1

        // Red Circle
        canvas.fillColor = Color.red
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        
        // Green Circle
        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: 500-x, y: y), width: 50, height: 50)
        
        // Yellow Circle
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(at: Point(x: 500-x, y: 500-y), width: 50, height: 50)
        
        
        // Yellow Circle
        canvas.fillColor = Color.blue
        canvas.drawEllipse(at: Point(x: x, y: 500-y), width: 50, height: 50)


        

        
    }
    
}

