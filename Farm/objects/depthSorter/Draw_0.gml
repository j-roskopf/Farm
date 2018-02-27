//get the number of instances that belong to our parent depth object
var numberOfInstances = instance_number(par_depth_object)

var grid = ds_depthGrid

//resize the height of the grid to be the number of instances that we want to manager their depth
ds_grid_resize(grid, 2, numberOfInstances)

//add instances to the grid

var yy = 0; with(par_depth_object) {
	grid[# 0, yy] = id
	grid[# 1, yy] = y
	yy += 1
}

//sort the grid ascending order
ds_grid_sort(grid, 1, true)

//loop through grid and draw all items
var currentID; var yy = 0; repeat(numberOfInstances) {
	currentID = grid[# 0, yy]
	with(currentID) {
		event_perform(ev_draw, 0)	
	}
	yy += 1
}