draw_self()

var centerX = 20;
var centerY = 20;

if flip = 1
{
	centerX = 20;
}
else if flip = -1
{
	centerX = -20;
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

