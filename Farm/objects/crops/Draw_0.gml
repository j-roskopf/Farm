if(!plantingMode) exit

var gx = mx div cellSize
var gy = my div cellSize


//check what is in the cell

var c = c_red

var cell = ds_crops_instances[# gx, gy]

//check for soil
var layerId = layer_get_id("T_Soil")
var mapId = layer_tilemap_get_id(layerId)
var data = tilemap_get_at_pixel(mapId, mx, my)

if(data != 0) {
	//there is no soil ther
	c = c_lime	
}

if(cell != 0) {
	//we already have a crop in this cell
	c = c_red	
}

xx = gx * cellSize
yy = gy * cellSize

draw_rectangle_color(
	xx,
	yy,
	xx + cellSize,
	yy + cellSize,
	c, c, c, c,
	true)

//draw the crop we would plant
draw_sprite(spr_crops_picked, selectCrop, xx + (cellSize / 2), yy + (cellSize / 2))