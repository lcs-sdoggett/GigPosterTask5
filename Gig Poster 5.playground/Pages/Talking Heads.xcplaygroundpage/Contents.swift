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

canvas.drawShapesWithBorders = false
canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)

for x in 0...8 {
    
    for y in 0...8 {
        
        // Decide if the triangle is going to be yellw or white
        if x - y >= 0 {
            canvas.fillColor = brightYellow
        } else {
            canvas.fillColor = offWhite
        }
        
        // Add points for a triangle into an array
        var triangleVertices: [Point] = []
        triangleVertices.append(Point(x: Double(x) * 44.44, y: Double(y) * 44.44 + 200))
        triangleVertices.append(Point(x: Double(x) * 44.44 + 44.44, y: Double(y) * 44.44 + 200))
        triangleVertices.append(Point(x: Double(x) * 44.44 + 44.44, y: Double(y) * 44.44 + 200 + 44.44))

        // Draw the shape based on the points in the array
        canvas.drawCustomShape(with: triangleVertices)
    }

}

canvas.textColor = offWhite
canvas.drawText(message: "talking heads" , at: Point(x: 25, y: 135), size: 40, kerning: 0)

canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 20, y: 30), size: 8, kerning: 0)

canvas.drawText(message: "september 12, 13, 14 1975", at: Point(x: 20, y: 15), size: 8, kerning: 0)

canvas.drawText(message: "at cbgb and omfug", at: Point(x: 145, y: 30), size: 8, kerning: 0)

canvas.drawText(message: "315 bowery, new york city", at: Point(x: 145, y: 15), size: 8, kerning: 0)

canvas.drawText(message: "also appearing:", at: Point(x: 270, y: 30), size: 8, kerning: 0)

canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 270, y: 15), size: 8, kerning: 0)



/*:
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 3:30 PM on Wednesday, February 12, 2020.


 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

