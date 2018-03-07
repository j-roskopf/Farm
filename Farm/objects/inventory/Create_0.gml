depth = -1 //make sure it's drawn on top of the lighting
scale = 2 // that's the resolution of our game - i.e. the game viewport to the camera ration

spr_ui = spr_inventory_UI
spr_inv_items = spr_inventory_items

cellSize = 32

inv_slots = 17 // total amount of slots
inv_slot_width = 8
inv_slot_height = 3

selected_slot = 0
pickup_slot = -1
m_slotx = 0
m_sloty = 0

x_buffer = 2
y_buffer = 4

spr_inv_items_columns = sprite_get_width(spr_inv_items) / cellSize
spr_inv_items_rows = sprite_get_height(spr_inv_items) / cellSize

spr_ui_width = 288
spr_ui_height = 192

gui_width = display_get_gui_width()
gui_height = display_get_gui_height()

show_inventory = true

inv_ui_x = (gui_width * 0.5) - (spr_ui_width * 0.5 * scale)
inv_ui_y = (gui_height * 0.5) - (spr_ui_height * 0.5 * scale)

player_info_x = (scale * 9) + inv_ui_x
player_info_y = (scale * 9) + inv_ui_y

slots_x = player_info_x
slots_y = inv_ui_y + (40 * scale)

//-------------- Player Info
//0 - gold amt
//1 - silver amt 
//2 - bronze amt 
//3 - name "name"

ds_player_info = ds_grid_create(2, 4)
ds_player_info[# 0, 0] = "Gold"
ds_player_info[# 0, 1] = "Silver"
ds_player_info[# 0, 2] = "Bronze"
ds_player_info[# 0, 3] = "Name"
ds_player_info[# 1, 0] = irandom_range(1, 100)
ds_player_info[# 1, 1] = irandom_range(1, 100)
ds_player_info[# 1, 2] = irandom_range(1, 100)
ds_player_info[# 1, 3] = "Joe"

//-----------Inventory
//0 - item name
//1 - item amount
ds_inventory = ds_grid_create(2, inv_slots)

enum items {
	none = 0,
	tomato = 1,
	potato = 2,
	carrot = 3,
	artichoke = 4,
	chili = 5,
	gourd = 6,
	corn = 7,
	wood = 8,
	stone = 9,
	bucket = 10,
	chair = 11,
	picture = 12,
	axe = 13,
	potion = 14,
	starfish = 15,
	mushroom = 16,
	height = 17
}

var yy = 0; repeat(inv_slots) {
	ds_inventory[# 0, yy] = irandom_range(1, items.height - 1)
	ds_inventory[# 1, yy] = irandom_range(1, 10)
	
	yy += 1
}