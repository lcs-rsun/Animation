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
let black2 = Color(hue: 0, saturation: 10, brightness: 0, alpha: 20)
let black3 = Color(hue: 0, saturation: 0, brightness: 0, alpha: 0)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)

canvas.fillColor = deepRed
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

for x in stride(from: 0, through: 300, by: 100){
    for y in stride(from: 0, through: 300, by: 100) {
        
        
        canvas.fillColor = offWhite
        canvas.drawShapesWithBorders = false
        var vertices: [Point] = []
        vertices.append(Point(x: x, y: y + 50 )) // start
        vertices.append(Point(x: x + 50, y: y + 100))
        vertices.append(Point(x: x + 100, y: y + 50))
        vertices.append(Point(x: x + 50, y: y))
        vertices.append(Point(x: x, y: y + 50))
        canvas.drawCustomShape(with: vertices)
        
        canvas.fillColor = deepRed
        canvas.drawEllipse(at: Point(x: x + 50, y: y + 50), width: 65, height: 65)
      
        canvas.fillColor = blue
        canvas.drawEllipse(at: Point(x: x + 75, y: y + 25), width: 65, height: 65)
        
        if x > 50, y < 300 {
            canvas.fillColor = black2
        } else {
            canvas.fillColor = black3
        }
       
        canvas.drawEllipse(at: Point(x: x + 25, y: y + 75), width: 65, height: 65)

     
            }
}


canvas.drawText(message: "the clash", at: Point(x: 10, y: 410), size: 48, kerning: -0.5)
canvas.drawText(message: "$2.25 / friday", at: Point(x: 20, y: 570), size: 9, kerning: -0.5)

canvas.drawText(message: "december 22 1978", at: Point(x: 20, y: 560), size: 9, kerning: -0.5)

canvas.drawText(message: "christmas party", at: Point(x: 110, y: 570), size: 9, kerning: -0.5)

canvas.drawText(message: "with the slits and innocents", at: Point(x: 110, y: 560), size: 9, kerning: -0.5)

canvas.drawText(message: "frais aylesbury at maxwell hall", at: Point(x: 250, y: 570), size: 9, kerning: -0.5)

canvas.drawText(message: "aylesbury, buckinghamshire, england", at: Point(x: 250, y: 560), size: 9, kerning: -0.5)


