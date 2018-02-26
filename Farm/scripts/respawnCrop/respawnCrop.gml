///@description respawn crop
///@arg grid_x
///@arg grid_y
///@arg crop_type 
///@arg days_old

var xx = argument0 * cellSize
var yy = argument1 * cellSize

//create the crop!
var instanceId = instance_create_layer(xx + (cellSize / 2), yy + (cellSize / 2), "Instances", obj_crop)
ds_crops_instances[# argument0, argument1] = instanceId
show_debug_message("respawned a " + ds_crops_type[# 2, argument2])

with(instanceId) {
	cropType = argument2
	daysOld = argument3
	growthStageDuration = crops.ds_crops_type[# 0, cropType]
}

return instanceId