//: [Previous](@previous) / [Next](@next)
//: # Tortoise Examples
//:
//: The `CanvasGraphics` framework also allows you to draw using a "LOGO turtle" metaphore.
//:
//: [Documentation for the Tortoise abstraction](http://russellgordon.ca/CanvasGraphics/Documentation/Classes/Tortoise.html) is available.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 500
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
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
## Tortoise class

To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
*/

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

//// Draw a square
//turtle.penUp()
//turtle.setPenColor(to: .black)
//turtle.setPenSize(to: 1)
//turtle.goToHome()
//turtle.penDown()
//for i in 1...4 {
//    turtle.forward(steps: 100)
//    turtle.left(by: 90)
//    turtle.currentHeading()
//    turtle.currentPosition()
//}

//Draw an n-sided polygon
func drawPolygon(sides: Int,turtle: Tortoise){
    
    //Figure out how musch to turn by(360 divided by number of sides)
    let angle = 360/sides
   
    for i in 1...sides {

        turtle.forward(steps: 100)
        turtle.left(by: Degrees(angle))
    }

}

// Move to middle of canvas and draw square
turtle.penUp()
turtle.setPosition(to: Point(x: 250, y: 250))
turtle.penDown()
turtle.currentPosition()
turtle.penDown()
drawPolygon(sides: 2, turtle: turtle)

// Draw many polygons - 10

for i in 1...15 {
    drawPolygon(sides: 2, turtle: turtle)
    turtle.left(by: Degrees(360/15))
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
