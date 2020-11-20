//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt2: NSObject, Sketchable {
    
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    
    // Add many functions
    // This is now a list , or an arrray, of functions
    var redBand: [MathFunction] = [] // empty list
    var smallerRedBand: [MathFunction] = [] // empty list
    
    // This function runs once
    override init() {
        
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Initialize many spirals
        for i in 1...20 {
            
            // Create the function
            let newFunction = MathFunction(a: 5,
                                           k: 1.0,
                                           d: CGFloat(i) * 25 ,
                                           c: 150,
                                           canvas: canvas,
                                           hue: Float(i) * 5,
                                           type: .sine)
            
            // Add it to the list
            redBand.append(newFunction)
        }
        
        for i in 1...5 {
            
            // Create the function
            let newFunction = MathFunction(a: 5,
                                           k: 1.0,
                                           d: CGFloat(i) * 25 ,
                                           c: 300,
                                           canvas: canvas,
                                           hue: Float(i) * 5,
                                           type: .sine,
                                           delayInSeconds: 2)
            
            // Add it to the list
            smallerRedBand.append(newFunction)
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
        canvas.translate(to: Point(x: canvas.width / 5, y: canvas.height / 5))
                
        // Drowthe entire list of functions all at once
        for x in 0...canvas.width {
            
            
            // Update the position of all larger red bands
            for function in redBand {
                
                // function.c = CGFloat(newC)
                
                // Gradually change the vertical stretch / compression
                function.a = 200.0 * sin(Degrees(canvas.frameCount).asRadians())
                
                function.update(on: canvas,
                                usingInputValue: x)
            }
            
            
            // Update the position of all smaller red bands
            for function in smallerRedBand {
                
                // function.c = CGFloat(newC)
                
                // Gradually change the vertical stretch / compression
                function.a = 25.0 * sin(Degrees(canvas.frameCount).asRadians())
                
                function.update(on: canvas,
                                usingInputValue: x)
            }
            
            
        }
        
        
        
        
        
    }
    
    
}
