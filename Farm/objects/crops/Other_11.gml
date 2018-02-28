if(room = room_farm) {
	//this only makes sense if we are in the farm room - otherwise we have to alter the grid 
	if(instance_exists(obj_crop)) {
		with(obj_crop) {
			growCrop(true)
		}
	}
} else if(ds_crops_data[# 0,0] != -1){
	//update the grid because we have some crops here!
	var numberOfCrops = ds_grid_height(ds_crops_data)
	var yy = 0; repeat(numberOfCrops) {
		ds_crops_data[# 3, yy] += 1
		yy += 1
	}
}

