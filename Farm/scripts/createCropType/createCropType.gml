///@description create crop type
///@arg grownStageDuration
///@arg cost

var numberOfArguments = argument_count

//manage size of grid
if(!ds_exists(ds_crops_type, ds_type_grid)) {
	ds_crops_type = ds_grid_create(numberOfArguments, 1)	
	var height = 1
} else {
	var height = ds_grid_height(ds_crops_type)
	ds_grid_resize(ds_crops_type, numberOfArguments, height + 1) //add one row to our grid
	height += 1
}

var yy = height - 1
var i = 0
repeat(numberOfArguments) {
	ds_crops_type[# i, yy] = argument[i]
	i += 1	
}