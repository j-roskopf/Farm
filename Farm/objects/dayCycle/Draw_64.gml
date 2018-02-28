if(shouldDrawDaylight) { //are we inside or outside
	//draw our light / darkness
	var c = lightColor //im lazy

	//set our alpha
	draw_set_alpha(darkness)

	//draw our rect
	draw_rectangle_color(0, 0, guiWidth, guiHeight, c, c, c, c, false)

	//reset alpha
	draw_set_alpha(1)
}


var c = c_yellow
draw_text_color(10, 10, string(seconds), c, c, c, c, 1)
draw_text_color(10, 30, string(minutes), c, c, c, c, 1)
draw_text_color(10, 50, string(hours), c, c, c, c, 1)
draw_text_color(10, 70, string(day), c, c, c, c, 1)
draw_text_color(10, 90, string(currentSeason), c, c, c, c, 1)
draw_text_color(10, 110, string(year), c, c, c, c, 1)