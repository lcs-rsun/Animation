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
let preferredWidth = 500
let preferredHeight = 500
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



// Draw the axes with a scale
canvas.drawAxes(withScale: true, by: 50)

//for y in stride(from: 0, to: 500, by: 50) {
//
//    for x in stride(from: 0, to: 500, by: 50) {
//
//        canvas.defaultLineWidth = 5
//        // Make a radom number that will be 1 or 2
//        let decisionMaker = Int.random(in: 1...2)
//
//        // Now draw a line one way or the other...
//        if decisionMaker == 1 {
//        // Draw a /
//            canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 50, y: y + 50))
//        } else {
//            // Draw a \
//            canvas.drawLine(from: Point(x: x, y: y + 50), to: Point(x: x + 50, y: y))
//        }
//
//    }
//}


//for y in stride(from: 0, to: 500, by: 50) {
//    for x in stride(from: 0, to: 500, by: 50){
//
//
//        canvas.drawLine(from: Point(x: x+25, y: y+25), to: Point(x: x, y: y+50))
//        canvas.drawLine(from: Point(x: x+25, y: y+25), to: Point(x: x+50, y: y+50))
//        canvas.drawLine(from: Point(x: x+25, y: x+25), to: Point(x: x, y: y))
//        canvas.drawLine(from: Point(x: x+25, y: x+25), to: Point(x: x+50, y: y))
//
//    }
//}



for y in stride(from: 0, to: 500, by: 50) {
    for x in stride(from: 0, to: 500, by: 50){
        canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x+50, y: y+50))
        canvas.drawLine(from: Point(x: x, y: y+50), to: Point(x: x+50, y: y))
    }
        
}
  
        
        

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
