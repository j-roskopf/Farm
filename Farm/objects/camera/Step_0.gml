//follow the player
moveCamera = keyboard_check(ord("C"))

if(moveCamera) {
	inputCheckCamera()
	x += (input_right - input_left) * 6
	y += (input_down - input_up) * 6
} else {
	x = clamp(x, following.x - hBorder, following.x + hBorder)
	y = clamp(y, following.y - vBorder, following.y + vBorder)
}


