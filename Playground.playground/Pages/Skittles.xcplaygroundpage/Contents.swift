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
let preferredWidth = 300
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
let canvas = Canvas(width: 480, height: 480)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.drawAxes(withScale: true, by: 80)

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
            
            // Draw a line
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
    
