var animLength = 9
var frameSize = 64
var animSpeed = 12


if(moveX < 0) {
	yFrame = 9	
} else if(moveX > 0) {
	yFrame = 11	
} else if(moveY < 0) {
	yFrame = 8	
} else if(moveY > 0) {
	yFrame = 10	
} else {
	xFrame = 0
}

var xx = x - xOffset
var yy = y - yOffset

var nextAnimation = animLength / 60 //fps
//increment frame for animation
if(xFrame + nextAnimation < animLength) {
	xFrame += nextAnimation 
} else {
	xFrame = 0;
}

//draw character base
draw_sprite_part(sprBase, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//draw character feet
draw_sprite_part(sprShoes, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//legs
draw_sprite_part(sprPants, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//draw shirt
draw_sprite_part(sprShirt, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//draw hair
draw_sprite_part(sprHair, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//draw bounding box
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)