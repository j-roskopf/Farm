if(ds_exists(ds_player_info, ds_type_grid)) {
	ds_grid_destroy(ds_player_info)
}

if(ds_exists(ds_inventory, ds_type_grid)) {
	ds_grid_destroy(ds_inventory)
}