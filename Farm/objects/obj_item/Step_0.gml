if(dropMove) {
	x = lerp(x, goalX, 0.1)
	y = lerp(y, goalY, 0.1)
	
	if( abs (x - goalX) < 1 && abs(y - goalY) < 1) {
		dropMove = false
	}
} else {
	if(!keyboard_check(ord("O"))) { exit } //press o pick up
	
	//check if we are close enough to the player to be picked up
	var px = obj_player.x
	var py = obj_player.y
	var r = 32 //radius of rectange
	if(point_in_rectangle(px, py, x - r, y - r, x + r, y + r)) {
		
		r = 2
		if(!point_in_rectangle(px, py, x - r, y - r, x + r, y + r)) {
			//move towards the player
			x = lerp(x, px, 0.1)
			y = lerp(y, py, 0.1)
		} else {
			//pick up the item	
			var in = itemNum
			with(inventory) {
				var ds_inv = ds_inventory
				var picked_up = false
				
				//check if the item currently exists
				var yy = 0; repeat(inv_slots) {
					if(ds_inv[# 0, yy] == in) {
						ds_inv[# 1, yy] += 1 //add it to the inventory
						picked_up = true
						break
					} else {				
						yy += 1
					}
				}
				
				if(!picked_up) {
					//otherwise, add it if we have space
					var yy = 0; repeat(inv_slots) {
						if(ds_inv[# 0, yy] == items.none) {
							ds_inv[# 0, yy] = in //set it to be the item type
							ds_inv[# 1, yy] += 1 //add it to the inventory
							picked_up = true
							break
						} else {				
							yy += 1
						}
					}
				}
			}
			
			if(picked_up) {
				instance_destroy()
				show_debug_message("picked up items!")
			}
		}
	}
}