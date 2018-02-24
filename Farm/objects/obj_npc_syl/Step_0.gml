input_left		= keyboard_check(vk_left)
input_right		= keyboard_check(vk_right)
input_up		= keyboard_check(vk_up)
input_down		= keyboard_check(vk_down)
input_walk		= keyboard_check(vk_control)
input_run		= keyboard_check(vk_shift)


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
