if distance_to_object(Obj_Player) < 80
{
	drawBlock(blockPlace, x, y);
}
else
{
	instance_destroy();
}
