if distance_to_object(Obj_Player) < 150
{
	drawBlock(blockPlace, x, y);
}
else
{
	instance_destroy()
}


if distance_to_object(Obj_Player) < global.distanceToBreakBlocks and
	(position_meeting(mouse_x, mouse_y, id))
{
	selectBlock = verifyBlock("select")
	drawBlock(selectBlock, x, y);
}