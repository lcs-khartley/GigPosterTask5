//: # Gig Poster 5
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![talking-heads-no-grid](talking-heads-no-grid.png "Talking Heads")
 ![talking-heads-with-grid](talking-heads-with-grid.png "Talking Heads")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a data structure that stores related pieces of information)
 * use of arithmetic operators in expressions

 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 3:30 PM on Wednesday, February 12, 2020.
 
 Good luck! You've got this! 👊🏻👊🏼👊🏽👊🏾👊🏿
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)

// Begin your solution here...

// Make background

canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


//canvas.fillColor = offWhite
//
//var whiteVertices: [Point] = []
//       whiteVertices.append(Point(x: Double(x), y: y))
//       whiteVertices.append(Point(x: Double(x), y: y+(400/9)))
//       whiteVertices.append(Point(x: Double(x+(400/9)), y: y+(400/9)))
//
//        canvas.drawCustomShape(with: whiteVertices)

// Draw triangles

canvas.fillColor = deepOrange
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false

// Stride for x coordinates
for x in stride(from: 0, through: 400-(44.44), by: 44.44){
    
    // Stride for y coordinates
    for y in stride(from: 200, through: (600/13.5)*12.5, by: 400/9){
        
        // If statement for the colour of the triangles
        
        var triangleVertices: [Point] = []
        triangleVertices.append(Point(x: Double(x), y: y))
        triangleVertices.append(Point(x: Double(x), y: y+(400/9)))
        triangleVertices.append(Point(x: Double(x+(400/9)), y: y+(400/9)))
       
        
        canvas.drawCustomShape(with: triangleVertices)
        
    }
}
/*:
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 3:30 PM on Wednesday, February 12, 2020.


 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

