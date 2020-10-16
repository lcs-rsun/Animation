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
class FiveCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    //Vertical position
    var x = 250
    var c = 250
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
       
        canvas.drawShapesWithBorders = false
        
        //Second, Fourth Circle
        c -= 1
        canvas.fillColor = Color.orange
        canvas.drawEllipse(at: Point(x: c, y: 350), width: 50, height: 50)
        c -= 1
        canvas.fillColor = Color.blue
        canvas.drawEllipse(at: Point(x: c, y: 150), width: 50, height: 50)

        //First, Third, Fifth Cicrcle
        x += 1
        canvas.fillColor = Color.purple
        canvas.drawEllipse(at: Point(x: x, y: 450), width: 50, height: 50)
        x += 1
        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: x, y: 250), width: 50, height: 50)
        x += 1
        canvas.fillColor = Color.black
        canvas.drawEllipse(at: Point(x: x, y: 50), width: 50, height: 50)

    }
    
}

