if(keyboard_check_pressed(ord("T"))) { timePaused = !timePaused }

if(timePaused) { exit }

//increment time
seconds += timeIncrement
minutes = seconds / 60
hours = minutes / 60

if(shouldDrawDaylight) {
	var darks, colors, phaseStart, phaseEnd
	#region //set colors
	if(hours > phases.sunrise && hours <= phases.dayTime) {
		//sunrise	
		darks = [maxDarkness, 0.2]
		colors = [merge_color(c_black, c_navy, 0.3), c_orange] //mostly black, but a little bit of navy
		phaseStart = phases.sunrise
		phaseEnd = phases.dayTime
	} else if(hours > phases.dayTime && hours <= phases.sunset) {
		//day time
		darks = [0.2, 0, 0, 0, 0.2]
		colors = [c_orange, c_orange, c_white, c_orange, c_orange]
		phaseStart = phases.dayTime
		phaseEnd = phases.sunset
	} else if(hours > phases.sunset && hours <= phases.nightTime) {
		//sunset	
		darks = [0.2, maxDarkness]
		colors = [c_orange, c_navy, merge_color(c_black, c_navy, 0.3)]
		phaseStart = phases.sunset
		phaseEnd = phases.nightTime
	} else {
		//night time	
		darks = [maxDarkness]
		colors = [merge_color(c_black, c_navy, 0.3)]
		phaseStart = phases.nightTime
		phaseEnd = phases.sunrise
	}
	#endregion
	
	#region //alter color depending on time
	if(phaseStart == phases.nightTime) { lightColor = colors[0] } else {
		//alter darkness and colors depending on time
		//hours - phase start (all over) phase end - phase start
		var cc = ((hours - phaseStart) / (phaseEnd - phaseStart)) * (array_length_1d(colors) - 1)
		var c1 = colors[floor(cc)]
		var c2 = colors[ceil(cc)]
		lightColor = merge_color(c1, c2, cc - floor(cc))
	}
	
	if(phaseStart == phases.nightTime) { darkness = darks[0] } else {
		var dd = ((hours - phaseStart) / (phaseEnd - phaseStart)) * (array_length_1d(darks) - 1)
		var d1 = darks[floor(dd)]
		var d2 = darks[ceil(dd)]
		darkness = mergeNumber(d1, d2, dd - floor(dd))
	}
	#endregion

	show_debug_message("max darkness and current darkness " + string(darkness) + " " + string(maxDarkness))
	
}

#region //cycle check
//once we get to 24 hours, have to set clock back to 0 and increment days
if(hours >= 24) {
	seconds = 0
	day += 1
	
	with(crops) {
		event_perform(ev_other, ev_user1)
	}
	
	if(day > 30) {
		day = 1
		if(currentSeason > 4) { year += 1 }
		if(currentSeason == seasons.spring) { currentSeason = seasons.summer }
		else if(currentSeason == seasons.summer) { currentSeason = seasons.fall }
		else if(currentSeason == seasons.fall) { currentSeason = seasons.winter }
		else if(currentSeason == seasons.winter) { currentSeason = seasons.spring }
	}
}
#endregion

