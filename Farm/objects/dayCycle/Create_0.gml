seconds = 0
minutes = 0
hours = 0

day = 1

enum seasons {
	spring,
	summer,
	fall,
	winter
}

maxDarkness = 0.7

enum phases {
	sunrise = 6,
	dayTime = 8.5,
	sunset = 18,
	nightTime = 22,
}

currentSeason = seasons.spring

shouldDrawDaylight = false

timePaused = false

year = 1

//30 seasons in each day
//4 seasons in a year

timeIncrement = 100 //number of game seconds per step

darkness = 0 //0 -> 1 completely light -> completely dark
lightColor = c_black //color of our night

guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()