///@description check horizontal and vertical collision

if(moveX != 0) {
	var collisionH = instance_place(x + moveX, y, obj_collision)
	if(collisionH != noone && collisionH.collidable) {
		repeat(abs(moveX)) {
			if(!place_meeting(x + sign(moveX), y, obj_collision)) {
				x += sign(moveX)	
			} else {
				break
			}
		}
		moveX = 0
	}
} else if(moveY != 0) {
	//vertical collision detection
	var collisionV = instance_place(x, y + moveY, obj_collision)
	if(collisionV != noone && collisionV.collidable) {
		repeat(abs(moveY)) {
			if(!place_meeting(x, y + sign(moveY), obj_collision)) {
				y += sign(moveY)	
			} else {
				break
			}
		}
		moveY = 0
	}
}