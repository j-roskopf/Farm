if(!show_inventory) { exit }

// ----------- Inventory
draw_sprite_part_ext(
	spr_ui,	0, cellSize, 0,	spr_ui_width, spr_ui_height, inv_ui_x,
	inv_ui_y, scale, scale, c_white, 1 )

var info_grid = ds_player_info
var c = c_black

//draw the name
draw_set_font(fnt_text_24)
draw_text_color(player_info_x, player_info_y, info_grid[# 0, 3] + ": " + info_grid[# 1, 3], c, c, c, c, 1)

draw_set_font(fnt_text_12)
//draw the coin numbers
var yy = 0; repeat(3) {
	
	draw_text_color(player_info_x + (192 * scale) + ((15 + 18) * scale * yy), player_info_y,
					string(info_grid[# 1, yy]), c, c, c, c, 1)
	yy += 1
}

//draw the slots
var ii, ix, iy, xx, yy, i_item, inv_grid, sx, sy;
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;

repeat(inv_slots) {
	//x y location for slot
	xx = slots_x + ((cellSize + x_buffer) * ix * scale)
	yy = slots_y + ((cellSize + y_buffer) * iy * scale)
	
	//get item
	i_item = inv_grid[# 0, ii]
	sx = (i_item mod spr_inv_items_columns) * cellSize
	sy = (i_item div spr_inv_items_columns) * cellSize
	
	//draw slot and item
	draw_sprite_part_ext(spr_ui, 0, 0, 0, cellSize, cellSize, xx, yy, scale, scale, c_white, 1) //draw the slot
	if(i_item > 0) draw_sprite_part_ext(spr_inv_items, 0, sx, sy, cellSize, cellSize, xx, yy, scale, scale, c_white, 1) //draw the item

	
	//draw item number
	if(i_item > 0) {
		var number = inv_grid[# 1, ii]
		draw_text_color(xx, yy, string(number), c, c, c, c, 1)
	}
	
	//increment
	ii += 1
	ix = ii mod inv_slot_width
	iy = ii div inv_slot_width
}