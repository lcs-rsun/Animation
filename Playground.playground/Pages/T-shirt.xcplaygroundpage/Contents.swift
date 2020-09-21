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

//// Changing line thickness
//canvas.defaultLineWidth = 1
//canvas.drawLine(from: Point(x: 50, y: 10), to: Point(x: 100, y: 500))
//
//canvas.defaultLineWidth = 5
//canvas.drawLine(from: Point(x: 50, y: 50), to: Point(x: 100, y: 600))
//canvas.drawLine(from: Point(x: 50, y: 200), to: Point(x: 100, y: 700))
//
//// Drawing elipese
//canvas.drawEllipse(at: Point(x: 250, y: 300), width: 50, height: 100)
//
//// Drawing all reaming shappe with no fill
//canvas.drawShapesWithFill = false
//canvas.defaultBorderWidth = 15
//canvas.drawEllipse(at: Point(x: 200, y: 200), width: 100, height: 25)

//// Drawing a custom polygon
//canvas.defaultLineWidth = 3
//canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 75)
//var vertices: [Point] = []  // empty list of vertices
//vertices.append(Point(x: 250, y: 400)) // start
//vertices.append(Point(x: 300, y: 500))
//vertices.append(Point(x: 270, y: 520))
//vertices.append(Point(x: 250, y: 400)) // end
//
//canvas.drawCustomShape(with: vertices)


// Robot design
// Head
canvas.drawShapesWithFill = false
canvas.defaultLineWidth = 5
var vertices: [Point] = []
vertices.append(Point(x: 110, y: 150)) // start
vertices.append(Point(x: 110, y: 400))
vertices.append(Point(x: 390, y: 400))
vertices.append(Point(x: 390, y: 150)) // end
canvas.drawCustomShape(with: vertices)

// Left ear
var vertices2: [Point] = []
vertices2.append(Point(x: 110, y: 200))// start
vertices2.append(Point(x: 110, y: 350))
vertices2.append(Point(x: 80, y: 350))
vertices2.append(Point(x: 80, y: 200))// end
canvas.drawCustomShape(with: vertices2)

// Right ear
var vertices3: [Point] = []
vertices3.append(Point(x: 390, y: 200))// start
vertices3.append(Point(x: 420, y: 200))
vertices3.append(Point(x: 420, y: 350))
vertices3.append(Point(x: 390, y: 350))// end
canvas.drawCustomShape(with: vertices3)

// left eyes & right eyes
canvas.defaultBorderWidth = 5
canvas.drawEllipse(at: Point(x: 180, y: 320), width: 80, height: 80)
canvas.drawEllipse(at: Point(x: 320, y: 320), width: 80, height: 80)

// Nose
var vertices4: [Point] = []
vertices4.append(Point(x: 250, y: 300))//start
vertices4.append(Point(x: 225, y: 250))
vertices4.append(Point(x: 275, y: 250))//end
canvas.drawCustomShape(with: vertices4)

// Mouth
var vertices5: [Point] = []
vertices5.append(Point(x: 180, y: 220))//start
vertices5.append(Point(x: 320, y: 220))
vertices5.append(Point(x: 320, y: 190))
vertices5.append(Point(x: 180, y: 190))//end
canvas.drawCustomShape(with: vertices5)

// Teeth
canvas.drawLine(from: Point(x: 200, y: 220), to: Point(x: 200, y: 190))
canvas.drawLine(from: Point(x: 220, y: 220), to: Point(x: 220, y: 190))
canvas.drawLine(from: Point(x: 240, y: 220), to: Point(x: 240, y: 190))
canvas.drawLine(from: Point(x: 260, y: 220), to: Point(x: 260, y: 190))
canvas.drawLine(from: Point(x: 280, y: 220), to: Point(x: 280, y: 190))
canvas.drawLine(from: Point(x: 300, y: 220), to: Point(x: 300, y: 190))

// Antenna
canvas.drawLine(from: Point(x: 243, y: 400), to: Point(x: 243, y: 480))
canvas.drawLine(from: Point(x: 257, y: 400), to: Point(x: 257, y: 480))
canvas.drawEllipse(at: Point(x: 250, y: 515), width: 70, height: 70)


canvas.drawEllipse(at: Point(x: 250, y: 515), width: 40, height: 40)


// eye ball
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 5
canvas.drawEllipse(at: Point(x: 180, y: 320), width: 50, height: 50)
canvas.drawEllipse(at: Point(x: 320, y: 320), width: 50, height: 50)

canvas.drawAxes(withScale:true)






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
