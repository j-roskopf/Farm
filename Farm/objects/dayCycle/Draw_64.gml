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
draw_text_color(10, 10, string(floor(seconds)) + " Seconds", c, c, c, c, 1)
draw_text_color(10, 30, string(floor(minutes)) + " Minutes", c, c, c, c, 1)
draw_text_color(10, 50, string(floor(hours)) + " Hours", c, c, c, c, 1)
draw_text_color(10, 70, string(day) + " Day", c, c, c, c, 1)
draw_text_color(10, 90, string(year) + " Year", c, c, c, c, 1)

if(currentSeason == seasons.fall) {
	draw_text_color(10, 110, "Fall" , c, c, c, c, 1)	
} else if(currentSeason == seasons.spring) {
	draw_text_color(10, 110, "Spring" , c, c, c, c, 1)	
} else if(currentSeason == seasons.summer) {
	draw_text_color(10, 110, "Summer" , c, c, c, c, 1)	
} else if(currentSeason == seasons.winter) {
	draw_text_color(10, 110, "Winter" , c, c, c, c, 1)	
}
