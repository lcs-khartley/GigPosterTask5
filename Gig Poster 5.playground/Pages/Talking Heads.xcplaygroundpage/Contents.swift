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

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false

// Make a white triangle base
canvas.fillColor = offWhite

var whiteVertices: [Point] = []
whiteVertices.append(Point(x: 0, y: 200))
whiteVertices.append(Point(x: 0, y: 600))
whiteVertices.append(Point(x: 400, y: 600))

canvas.drawCustomShape(with: whiteVertices)


// Make a yellow triangle base
canvas.fillColor = brightYellow

var yellowVertices: [Point] = []
yellowVertices.append(Point(x: 0, y: 200))
yellowVertices.append(Point(x: 400, y: 600))
yellowVertices.append(Point(x: 400, y: 200))

canvas.drawCustomShape(with: yellowVertices)

// Draw orange triangles

canvas.fillColor = deepOrange

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

canvas.textColor = offWhite
canvas.drawText(message: "talking heads", at: Point(x: 25, y: 140), size: 35, kerning: 0.0)

var text:[String] = ["friday, saturday, sunday","at cbgb and emfug", "also appearing:", "september 12, 13, 14", "315 bowery, new york city", "from brooklyn, the shirts"]

var number = 0

for y in stride(from: 30, through: 15, by: -15){
    
    for x in stride(from: 20, through: 280, by: 130){
        canvas.drawText(message: text[number], at: Point(x: x, y: y), size: 8, kerning: 0.0)
        
        number += 1
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

