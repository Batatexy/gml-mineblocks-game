draw_self()

if distance_to_point(mouse_x,mouse_y) < global.distanceToBreakBlocks
{
	mouseX = mouse_x
	mouseY = mouse_y
}

draw_line(Obj_Player.x,Obj_Player.y,mouseX,mouseY)

if horizontalSpeed >0
{
	centerX = 20;
	flip = 1
}
else if horizontalSpeed < 0
{
	centerX = -20;
	flip = -1
}

//De pé
if !shift
{
	//Sempre desenhar o corpo e cabeça
	draw_sprite_part_ext(GigaFrankBody, 0, 0, 0, 40, 40, x-centerX, y-centerY, flip, 1, c_white, 1);
	
	//Parado
	if horizontalSpeed = 0
	{
		draw_sprite_part_ext(GigaFrankLegs, 0, 0, 0, 40, 40, x-centerX, y-centerY, flip, 1, c_white, 1);
		draw_sprite_part_ext(GigaFrankBodyLeftArm, 0, 0, 0, 40, 40, x-centerX, y-centerY, flip, 1, c_white, 1);
		draw_sprite_part_ext(GigaFrankBodyRightArm, 0, 0, 0, 40, 40, x-centerX, y-centerY, flip, 1, c_white, 1);
	}
	//Andando
	else
	{
		var walking = 1;
		
		draw_sprite_part_ext(GigaFrankLegs, walking, 0, 0, 40, 40, x-centerX, y-centerY, flip, 1, c_white, 1);
		draw_sprite_part_ext(GigaFrankBodyLeftArm, walking, 0, 0, 40, 40, x-centerX, y-centerY, flip, 1, c_white, 1);
		draw_sprite_part_ext(GigaFrankBodyRightArm, walking, 0, 0, 40, 40, x-centerX, y-centerY, flip, 1, c_white, 1);
	}
}
//Agachado
else
{
	//Sempre desenhar o corpo e cabeça
	draw_sprite_part_ext(GigaFrankBody, 1, 0, 0, 40, 40, x-centerX, y-centerY, flip, 1, c_white, 1);
}

