function putBlock(block)
{
	global.world[int64(mouse_y/16)][int64(mouse_x/16)] = block;
}

function whereToPlaceBlock(blockLayer, block, up, down, left, right)
{
	if global.world[int64((mouse_y/16) + down)][int64(mouse_x/16)] != "" or
	global.world[int64((mouse_y/16) - up)][int64(mouse_x/16)] != "" or
	global.world[int64(mouse_y/16)][int64((mouse_x/16)) + right] != "" or
	global.world[int64(mouse_y/16)][int64((mouse_x/16)) - left] != ""
	{
		putBlock(block);
	}
}
