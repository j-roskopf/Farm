walking_speed = 1
normal_speed = 2
running_speed = 10

spd = normal_speed

xFrame = 0
yFrame = 9

xOffset = sprite_get_xoffset(mask_index) //mask index is the currently assigned sprite mask
yOffset = sprite_get_yoffset(mask_index)

sprBase = -1
sprShoes = -1
sprPants = -1
sprShirt = -1
sprHair = -1
sprShadow = spr_character_shadow

moveX = 0
moveY = 0

spd = walking_speed

//call alarm 1 right away
alarm[1] = 1