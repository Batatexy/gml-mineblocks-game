event_inherited();

mouseX = 0
mouseY = 0

//Desenhar os Sprites do Player
centerX = 20;
centerY = 20;
flip = 1;

global.distanceToBreakBlocks = 80;

row = 4;
col = 9;

global.world = array_create(row);

for (var i = 0; i < row; i++) 
{
    global.inventory[i] = array_create(col);
}

for (var i = 0; i < row; i++) {
    for (var j = 0; j < col; j++) 
	{
        global.inventory[i][j] = "dirt";
    }
}