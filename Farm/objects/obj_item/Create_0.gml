event_inherited()

cellSize = 32
item_spr = spr_inventory_items
spr_width = sprite_get_width(item_spr)
spr_height = sprite_get_height(item_spr)

itemNum = -1

xFrame = 0
yFrame = 0

xOffset = cellSize / 2
yOffset = cellSize * (2/3)

dropMove = true
var itemDir = irandom_range(0, 359)
var len		= 32
goalX		= x + lengthdir_x(len, itemDir)
goalY		= y + lengthdir_y(len, itemDir)