var animLength = 9
var frameSize = 64
var animSpeed = 12

switch(facing) {
	case dir.left:	yFrame = 9	break
	case dir.right: yFrame = 11 break
	case dir.up:	yFrame = 8	break
	case dir.down:	yFrame = 10 break
	case -1:		xFrame = 0
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

//draw char shadow first!
if(sprShadow != -1) draw_sprite(sprShadow, 0, x, y)

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