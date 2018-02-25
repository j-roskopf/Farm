if(!debugMode) { exit }

with(obj_collision) {
	//draw bounding box
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)
}

with(obj_player) {
	//draw bounding box
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)
}

var cs = crops.cellSize

//draw the grid
var r = roomWidth div cs
var xx = 0

draw_set_alpha(0.3)

//vertical
repeat(r) {
	draw_line_color(xx, 0, xx, roomHeight, c_white, c_white)	
	xx += cs
}

//horizontal
var yy = 0
var r = roomHeight div cs
repeat(r) {
	draw_line_color(0, yy, roomWidth, yy, c_white, c_white)	
	yy += cs
}

draw_set_alpha(1)