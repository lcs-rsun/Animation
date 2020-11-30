//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class LaptopSkin7: NSObject, Sketchable {
    

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Add many spirals
    // This is now a list , or an arrray, of spirals
    var spirals: [MathFunction2] = [] // empty list
   

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 600, height: 400)
        
        // Initialize many spirals
        for i in 1...20 {
            
            // Give the one spiral a starting angle of rotation
//            let spiral = IndividualSpiral(angleOffset: i * 60,
//                                          hue: Float(i) * 60)
            let spiral = MathFunction2(a: 1,
                                      k: 1,
                                      d: 0,
                                      c: 0,
                                      canvas: canvas,
                                      angleOffset: i * 10,
                                      hue: Float(i) * 60,
                                      type: .spiral,
                                      delayInSeconds: 0,
                                      shapeType: .none)
            
            // Add the new spiral to the list
            spirals.append(spiral)
            
            
        }
        
        
        // Speed
        canvas.framesPerSecond = 80
    }
    

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Opaque white, for now
        canvas.fillColor = Color(hue: 0,
                                 saturation: 0,
                                 brightness: 0,
                                 alpha: 10)
        
        canvas.drawRectangle(at: Point(x: 0, y: 0),
                             width: canvas.width,
                             height: canvas.height)
        

        // What frame are we on?
//        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 1
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
        
        // Update the position of that one spiral
        
        let radius = 100.0 * sin(Degrees(canvas.frameCount).asRadians())

        
        for spiral in spirals {
          
            
            for x in 0...canvas.width {
                
                spiral.radius = radius
                spiral.update(on: canvas,
                                usingInputValue: x)

                
            }

            
        }
      
       



    }
    

}
