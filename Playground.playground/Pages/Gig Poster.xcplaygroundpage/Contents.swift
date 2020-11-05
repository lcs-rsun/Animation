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

let pink = Color(hue: 333, saturation: 60, brightness: 93, alpha: 100)
let grey = Color(hue: 300, saturation: 1, brightness: 70, alpha: 100)

canvas.fillColor = Color.black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
for x in stride(from: 10, through: 390, by: 200){
    for y in stride(from: 210, through: 600, by: 200){
        
        canvas.fillColor = grey
        canvas.drawRectangle(at: Point(x: x, y: y), width: 180, height: 180)
                    
    }
}

canvas.lineColor = pink
canvas.defaultLineWidth = 10
for x in stride(from: 40, through: 170, by: 30){
    canvas.drawLine(from: Point(x: x, y: 215), to: Point(x: x, y: 385))
}

for x in stride(from: 240, through: 360, by: 30){
    canvas.drawLine(from: Point(x: x, y: 415), to: Point(x: x, y: 585))
}

for y in stride(from: 440, through: 560, by: 30){
    canvas.drawLine(from: Point(x: 15, y: y), to: Point(x: 185, y: y))
}

for y in stride(from: 240, through: 360, by: 30){
    canvas.drawLine(from: Point(x: 215, y: y), to: Point(x: 385, y: y))
}


canvas.textColor = pink
canvas.drawText(message: "THE NOW NOW ", at: Point(x: 15, y: 118), size: 55, kerning: -4)
canvas.drawText(message: "TOUR ", at: Point(x: 140, y: 58), size: 55, kerning: -4)

canvas.textColor = Color.white
canvas.drawText(message: "THE NOW NOW ", at: Point(x: 10, y: 120), size: 55, kerning: -4)
canvas.drawText(message: "TOUR ", at: Point(x: 135, y: 60), size: 55, kerning: -4)



canvas.drawText(message: "Thursday", at: Point(x: 15, y: 40), size: 11, kerning: 1)
canvas.drawText(message: "October 18 2018", at: Point(x: 15, y: 25), size: 11, kerning: 1)
canvas.drawText(message: "tickets $130", at: Point(x: 15, y: 10), size: 11, kerning: 1)

canvas.drawText(message: "Air Canada Centre", at: Point(x: 240, y: 40), size: 11, kerning: 1)
canvas.drawText(message: "40 Bay St", at: Point(x: 240, y: 25), size: 11, kerning: 1)
canvas.drawText(message: "Toronto, Ontario, Canada", at: Point(x: 240, y: 10), size: 11, kerning: 1)



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
