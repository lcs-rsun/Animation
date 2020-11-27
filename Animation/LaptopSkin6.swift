//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class LaptopSkin6: NSObject, Sketchable {
    

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    
    // Add many functions
    // This is now a list , or an arrray, of functions
    var functions: [MathFunction] = [] // empty list

    // This function runs once
    override init() {
        
        
        // Create canvas object – specify size
        canvas = Canvas(width: 600, height: 400)
        
        // Initialize many spirals
        for i in 1...20 {
           
            // Create the function
            let newFunction = MathFunction(a: 1,
                                           k: 20.0,
                                           d: CGFloat(i) * 20 - 200 ,
                                           c: 0,
                                           canvas: canvas,
                                           hue: Float(i) * 700,
                                           type: .reciprocal)
            
            // Add it to the list
            functions.append(newFunction)
        }
        
        
        // Speed
        canvas.framesPerSecond = 60
    }
    

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Clear the canvas
        canvas.fillColor = Color(hue: 10,
                                 saturation: 0,
                                 brightness: 100,
                                 alpha: 80)
        
        canvas.drawRectangle(at: Point(x: 0, y: 0),
                             width: canvas.width,
                             height: canvas.height)

        // What frame are we on?
//        print(canvas.frameCount)
    

        canvas.defaultLineWidth = 1
        
                
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
        
        // Randomly change the vertical position
//        Int.random(in: -150...150)

        // Drowthe entire list of functions all at once
        for x in 0...canvas.width {
            
                
            // Update the position of all functions
            for function in functions {
                
                // function.c = CGFloat(newC)
                
                // Gradually change the vertical stretch / compression
                function.k = 200.0 * sin(Degrees(canvas.frameCount).asRadians())
                    
                function.update(on: canvas,
                                usingInputValue: x)
            }
            
        }
        
        



    }
    

}
