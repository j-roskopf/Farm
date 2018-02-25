if(room = room_farm && ds_crops_instances == 0) {
	//create our structure!
	ds_crops_instances = ds_grid_create(room_width div cellSize, room_height div cellSize)
}