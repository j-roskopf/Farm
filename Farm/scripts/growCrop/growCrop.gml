///@description grow the crops!
///@arg grow_crop_on_script_run

if(growthStage < maxGrowthStage) {
	if(argument0) {
		daysOld += 1	
	}
			
	var firstGrowth = 0
	if(daysOld > 0) { firstGrowth = 1 }
			
	growthStage = firstGrowth + (daysOld div growthStageDuration)
} else {
	growthStage = maxGrowthStage
	fullyGrown = true
	alarm[1] = 1
}
