
//clea up crops info grid
if(ds_exists(ds_crops_type, ds_type_grid)) {
	ds_grid_destroy(ds_crops_type)	
}

//clean up crops instances grid
if(ds_exists(ds_crops_instances, ds_type_grid)) {
	ds_grid_destroy(ds_crops_instances)	
}
