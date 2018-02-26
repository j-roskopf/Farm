if(room == room_farm) {
	//save our crops!
	var numberOfCrops = instance_number(obj_crop)
	if(numberOfCrops > 0) {
		ds_grid_resize(ds_crops_data, ds_grid_width(ds_crops_data), numberOfCrops)
		
		//loop through instance grid and see if there is a crop there
		//if there is, store it in our data
		var gridWidth = ds_grid_width(ds_crops_instances)
		var gridHeight = ds_grid_height(ds_crops_instances)
		var slot = 0
		
		var xx = 0; repeat(gridWidth) {
			var yy = 0; repeat(gridHeight) {
				//is there an instance of a crop at the x , y
				var instance = ds_crops_instances[# xx, yy]
				
				if(instance != 0) {
					//there is something there!
					ds_crops_data[# 0, slot] = xx
					ds_crops_data[# 1, slot] = yy
					ds_crops_data[# 2, slot] = instance.cropType
					ds_crops_data[# 3, slot] = instance.daysOld
					
					slot += 1
				}
				yy += 1
			}
			xx += 1
		}
	} else {
		ds_grid_clear(ds_crops_data, -1)	
	}
	
	ds_grid_destroy(ds_crops_instances)
}