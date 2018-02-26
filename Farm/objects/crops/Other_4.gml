if(room = room_farm) {
	//create our structure!
	ds_crops_instances = ds_grid_create(room_width div cellSize, room_height div cellSize)
	ds_grid_clear(ds_crops_instances, 0)
	
	//respawn the crops
	if(ds_crops_data[# 0,0] != -1) {
		var numberOfInstances = ds_grid_height(ds_crops_data)
		var slot = 0; repeat(numberOfInstances) {
			respawnCrop(
				ds_crops_data[# 0, slot],
				ds_crops_data[# 1, slot],
				ds_crops_data[# 2, slot],
				ds_crops_data[# 3, slot],
			)
			
			slot += 1
		}
		
		with(obj_crop) {
			growCrop(false)	
		}
	}
}