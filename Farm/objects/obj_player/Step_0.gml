inputCheck()


if(input_walk || input_run) {
	spd = abs((input_walk * walking_speed) - (input_run * running_speed))	
} else {
	spd = normal_speed	
}

moveX = 0
moveY = 0

//only allow one way movement
moveX = (input_right - input_left) * spd
if(moveX == 0) moveY = (input_down - input_up) * spd

//get direction player is facing
if(moveX != 0) {
	switch(sign(moveX)) {
		case  1: facing = dir.right break;
		case -1: facing = dir.left  break;
	}
} else if(moveY != 0) {
	switch(sign(moveY)) {
		case  1: facing = dir.down break;
		case -1: facing = dir.up   break;
	}
} else {
	facing = -1	
}

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

//objects collision
var idOfTransitionObject = instance_place(x, y, obj_transition)
//make sure we're colliding with a transition object and facing the correct direction
if(idOfTransitionObject != noone && idOfTransitionObject.playerFacingBefore = facing) {
	with(game) {
		if(!doTransition) {
			spawnRoom = idOfTransitionObject.targetRoom	
			doTransition = true
			spawnX = idOfTransitionObject.targetX
			spawnY = idOfTransitionObject.targetY
			spawnPlayerFacing = idOfTransitionObject.playerFacingAfter
		}
	}
}

//actually move our player vertically
y += moveY

//actually move our player horizontally
x += moveX;
