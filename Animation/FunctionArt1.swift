//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt1: NSObject, Sketchable {
    

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    
    // Add many spirals
    // This is now a list , or an arrray, of functions
    var functions: [MathFunction] = [] // empty list

    // This function runs once
    override init() {
        
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Initialize many spirals
        for i in 1...20 {
           
            // Create the function
            let newFunction = MathFunction(a: 1.0,
                                           k: 15.0,
                                           d: CGFloat(i) * 25 ,
                                           c: 0,
                                           canvas: canvas,
                                           hue: Float(i) * 30)
            
            // Add it to the list
            functions.append(newFunction)
        }
        
        
        // Speed
        canvas.framesPerSecond = 60
    }
    

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        

        // What frame are we on?
//        print(canvas.frameCount)
        
        

        canvas.defaultLineWidth = 1
        
                
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 5, y: canvas.height / 5))
        
        // Update the position of all functions
        for function in functions {
            function.update(on: canvas)
        }
        



    }
    

}
