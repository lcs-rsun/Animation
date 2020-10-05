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

let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)

canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 13

//Bottom right corner

for x in stride(from: 400, to: 10, by: -57) {
    if x%2 == 0 {
        canvas.borderColor = black
    } else {
        canvas.borderColor = beige
    }
    canvas.drawRectangle(at: Point(x: 400, y: 0), width: x-25, height: x-25,anchoredBy: .centre)
    
    
}


//Bottom left corner
for x in stride(from: 0, to: 390, by: 57){
    if x%6 == 0 {
        canvas.borderColor = black
    } else {
        canvas.borderColor = beige
        
    }
    canvas.drawRectangle(at: Point(x: 0, y: 0), width: x+25, height: x+25,anchoredBy: .centre)
}

//Up right corner

for y in stride(from: 0, to: 390, by: 57){
    if y%2 == 0 {
        canvas.borderColor = black
    } else {
        canvas.borderColor = beige
    }
    canvas.drawRectangle(at: Point(x: 0, y: 400), width: y+25, height: y+25,anchoredBy: .centre)
    
    }

// Up left corner
for y in stride(from: 400, to: 10, by: -57){
    if y%2 == 0{
        canvas.borderColor = black
    } else {
        canvas.borderColor = beige
    
    }
    canvas.drawRectangle(at: Point(x: 400, y: 400), width: y-25, height: y-25,anchoredBy: .centre)
    
}

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200,anchoredBy:.bottomLeft)






canvas.drawAxes(withScale: true, by: 50)
/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
