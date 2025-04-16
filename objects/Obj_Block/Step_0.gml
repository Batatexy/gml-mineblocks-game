if distance_to_object(Obj_Player) < global.distanceToBreakBlocks
{
	if (position_meeting(mouse_x, mouse_y, id)) 
	{
		if mouse_check_button(mb_left)
		{
			global.world[y/16][x/16] = "";
			instance_destroy();
		}
	}
}



