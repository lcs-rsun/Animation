//
//  MovingCircle.swift
//  Animation
//
//  Created by Ruby Sun on 2020-10-21.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

class MovingCircle {
    
    //1.Properties
    //Describe information we need to create the moving circle
    
    //Position
    var x: Int
    var y: Int
    
    //Change in position
    var dx: Int
    var dy: Int
    
    //2. Initializer
    // Gives the information a stating value
    init(x: Int, y: Int, dx: Int, dy: Int) {
        
        // Initilize the values
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
    }
    
    //3. Methods
    // DEscribe the behaviors (things we want to have happen)
    
    func update(on canvas: Canvas) {
        
        x += dx
        y += dy

        canvas.drawShapesWithFill = false
        canvas.drawEllipse(at: Point(x: x, y: y), width: 100, height: 100)

        // Small Circle Bounce
        if x >= 500{
            dx = Int.random(in: 1...3) * -1
        } else if x <= 0 {
            dx = Int.random(in: 1...3)
        } else if y >= 500 {
            dy = -1
        } else if y <= 0 {
            dy = 1
        }

    }
}
