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
class Skittles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 480, height: 480)
        canvas.framesPerSecond = 1
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 240, y: 240), width: 480, height: 480, anchoredBy: .centre)

        
        //Generate seven radom 0 or 1's
        for x in stride(from: 0, through: 480, by: 80){
            
            //Generate the andom 0 or 1
            let skittle = Bool.random()

            //When the skittle is 1 or true
            if skittle == true {
                // Draw the line first, the go every other
                for y in stride(from: 80, through: 400, by: 160){
                    // Draw a line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y + 80))
                }
                
            } else {
                //Draw a gap first, then go every other
                for y in stride(from: 0, through: 480, by: 160){
                    
                    // Draw a linez
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y+80))
                }
                
            }
            
        }

        //Generate seven radom 0 or 1's
        for y in stride(from: 0, through: 480, by: 80){
            
            //Generate the andom 0 or 1
            let skittle = Bool.random()

            //When the skittle is 1 or true
            if skittle == true {
                // Draw the line first, the go every other
                for x in stride(from: 80, through: 400, by: 160){
                    // Draw a line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 80, y: y))
                }
                
            } else {
                //Draw a gap first, then go every other
                for x in stride(from: 0, through: 480, by: 160){
                    
                    // Draw a line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 80, y: y))
                }
                
                
            }
            
            
            
            
        }

        
        
    }
    
}

