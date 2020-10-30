//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */


let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)

canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
canvas.drawShapesWithFill = false

canvas.defaultBorderWidth = 13
for size in stride(from: 0, through: 228, by: 38){
    
   
    canvas.borderColor = offWhite
    var vertices: [Point] = []
    vertices.append(Point(x: 225, y: 375 + size )) // start
    vertices.append(Point(x: 225 - size, y: 375))
    vertices.append(Point(x: 225, y: 375 - size))
    vertices.append(Point(x: 225 + size, y: 375))
    vertices.append(Point(x: 225, y: 375 + size))
    canvas.drawCustomShape(with: vertices)
    


}

for size in stride(from: 0, through: 228, by: 38){
    
    canvas.borderColor = blue
    
    
    var vertices2: [Point] = []
    vertices2.append(Point(x: 175, y: 375 + size )) // start
    vertices2.append(Point(x: 175 - size, y: 375))
    vertices2.append(Point(x: 175, y: 375 - size))
    vertices2.append(Point(x: 175 + size, y: 375))
    vertices2.append(Point(x: 175, y: 375 + size))
    canvas.drawCustomShape(with: vertices2)
    
}
    
canvas.drawAxes(withScale: true, by: 50)
    




