roomWidth = room_width
roomHeight = room_height

if(spawnRoom == -1) exit

obj_player.x = spawnX
obj_player.y = spawnY

obj_player.facing = spawnPlayerFacing

with(obj_player) {
	switch(facing) {
		case dir.left:	yFrame = 9	break
		case dir.right: yFrame = 11 break
		case dir.up:	yFrame = 8	break
		case dir.down:	yFrame = 10 break
		case -1:		xFrame = 0
	}
}