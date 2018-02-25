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

//draw char shadow first!
if(sprShadow != -1) draw_sprite(spr_character_shadow, 0, x, y)

//draw character base
if(sprBase != -1) draw_sprite_part(sprBase, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//draw character feet
if(sprShoes != -1) draw_sprite_part(sprShoes, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//legs
if(sprPants != -1) draw_sprite_part(sprPants, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//draw shirt
if(sprShirt != -1) draw_sprite_part(sprShirt, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//draw hair
if(sprHair != -1) draw_sprite_part(sprHair, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy)

//increment frame for animation
if(xFrame < animLength - 1) {
	xFrame += animSpeed / 60 //fps
} else {
	xFrame = 0;
}