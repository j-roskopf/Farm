if(keyboard_check_pressed(ord("I"))) { show_inventory = !show_inventory }

if(!show_inventory) { exit }

#region //mouse slot

//get mouse relative to gui
mousex = device_mouse_x_to_gui(0)
mousey = device_mouse_y_to_gui(0)

var cell_xbuff = (cellSize + x_buffer) * scale
var cell_ybuff = (cellSize + y_buffer) * scale

var i_mousex = mousex - slots_x
var i_mousey = mousey - slots_y

var nx = i_mousex div cell_xbuff
var ny = i_mousey div cell_ybuff

if(nx >= 0 && nx < inv_slot_width && ny >= 0 && ny < inv_slot_height) {
	var sx = i_mousex - (nx * cell_xbuff)
	var sy = i_mousey - (ny * cell_ybuff)
	
	if((sx < (cellSize * scale)) && (sy < (cellSize * scale))) {	
		m_slotx = nx
		m_sloty = ny
	}
}

//set the selected slot to mouse psn
selected_slot = min(m_slotx + (m_sloty * inv_slot_width), inv_slots - 1)

#endregion

//pick up item

var inv_grid = ds_inventory
var selectedSlotItem = inv_grid[# 0, selected_slot]

if(pickup_slot != -1) {
	if(mouse_check_button_pressed(mb_left)) {
		if(selectedSlotItem == items.none) {
			//change the content of the inv grid to be our picked up item
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot]
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot]
			
			inv_grid[# 0, pickup_slot] = items.none
			inv_grid[# 1, pickup_slot] = 0
			
			pickup_slot = -1
		} else if (selectedSlotItem == inv_grid[# 0, pickup_slot]) {
			//the item we are putting it down are of the same time of the one we picked up
			if(selected_slot != pickup_slot) {
				//putting it down on a different slot of the same type
				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot]
				inv_grid[# 0, pickup_slot] = items.none
				inv_grid[# 1, pickup_slot] = 0
			}
			
			pickup_slot = -1
			
		} else {
			var selectedItemNum = inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot]
			
			//putting down the item in a spot with a different item
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot]
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot]
			
			inv_grid[# 0, pickup_slot] = selectedSlotItem
			inv_grid[# 1, pickup_slot] = selectedItemNum
		}
	}
} else if(selectedSlotItem != items.none) {
	if(mouse_check_button_pressed(mb_right)) {
		pickup_slot = selected_slot
	}
}
