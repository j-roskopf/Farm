///@description create the crop!
///@arg x position
///@arg y position
///@arg crop type

var cs = crops.cellSize
var gx = argument0 div cs
var gy = argument1 div cs
var grid = crops.ds_crops_instances
var currentCell = grid[# gx, gy] //what crop is currently in our cell

if(currentCell != 0) { 
	show_debug_message("There is already a crop here!")	
	return false
}

xx = gx * cs
yy = gy * cs

//check for soil
var layerId = layer_get_id("T_Soil")
var mapId = layer_tilemap_get_id(layerId)
var data = tilemap_get_at_pixel(mapId, argument0, argument1)

if(data == 0) {
	show_debug_message("There is no soil here!")
	return false
} else {
	show_debug_message("There was soil here!")	
}

//create the instance
var idOfCrop = instance_create_layer(xx + (cs / 2), yy + (cs / 2), "Instances", obj_crop)
ds_crops_instances[# gx, gy] = idOfCrop

//give charactersistics
with(idOfCrop) {
	cropType = argument2
	growthStageDuration = crops.ds_crops_type[# 0, cropType]
}

return idOfCrop