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
let canvas = Canvas(width: 400 , height: 600)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)

//Background
canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

for x in stride(from: 0, to: 400, by: 50){
    for y in stride(from: 200, to: 600, by: 50){
        
        if  (x-y)<(-200)  {
            canvas.fillColor = offWhite
        } else  {
            canvas.fillColor = brightYellow
        }
        
        
        canvas.drawShapesWithBorders = false
        
        var vertices:[Point] = []
        vertices.append(Point(x: x, y: y))
        vertices.append(Point(x: x+50, y: y+50))
        vertices.append(Point(x: x+50, y: y))
        canvas.drawCustomShape(with: vertices)
    
       
    }
    
    
}

canvas.textColor = offWhite
canvas.drawText(message: "talking heads", at: Point(x: 25, y: 140), size: 40, kerning: 0)
canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 18, y: 30), size: 9, kerning: 0)
canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 18, y: 15), size: 9, kerning: 0)
canvas.drawText(message: "at cbgb and omfug", at: Point(x: 150, y: 30), size: 9, kerning: 0)
canvas.drawText(message: "315 bowery, new york city", at: Point(x: 150, y: 15), size: 9, kerning: 0)

canvas.drawText(message: "also appearing:", at: Point(x: 280, y: 30), size: 9, kerning: 0)
canvas.drawText(message: "from brroklyn, the shirts", at: Point(x: 280, y: 15), size: 9, kerning: 0)

//canvas.drawAxes(withScale: true, by: 50)
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
