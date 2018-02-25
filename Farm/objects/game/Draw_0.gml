if(debug_mode) {
	with(obj_collision) {
		//draw bounding box
		draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)
	}

	with(obj_player) {
		//draw bounding box
		draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)
	}
}