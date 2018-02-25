


if(place_meeting(x + moveX, y, obj_collision)) {
	repeat(abs(moveX)) {
		if(!place_meeting(x + sign(moveX), y, obj_collision)) {
			x += sign(moveX)	
		} else {
			break
		}
	}
	moveX = 0
}



//vertical collision detection
if(place_meeting(x, y + moveY, obj_collision)) {
	repeat(abs(moveY)) {
		if(!place_meeting(x, y + sign(moveY), obj_collision)) {
			y += sign(moveY)	
		} else {
			break
		}
	}
	moveY = 0
}
//actually move our player vertically
y += moveY

//actually move our player horizontally
x += moveX;


