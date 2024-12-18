row = 16000;
col = 300;

global.world = array_create(row);

for (var i = 0; i < row; i++) 
{
    global.world[i] = array_create(col);
}

for (var i = 0; i < row; i++) {
    for (var j = 0; j < col; j++) 
	{
        global.world[i][j] = "dirt";
    }
}

//Gerar 1 bloco pela primeira vez
for (var X = 0; X < 1; X++) 
{
	for (var Y = 0; Y < 1; Y++) 
	{
		var blockPosition = verifyBlock(global.world[X][Y])
		if blockPosition != false
		{
			var xPosition = X * 16;
			var yPosition = Y * 16;
		
			//Inverter a posição de X e Y, pois a matriz funciona de forma contrária
			var blockInstance = instance_create_layer(yPosition, xPosition, "Blocks", Obj_Block);
			with (blockInstance)
			{
				blockPlace = blockPosition
			}
		}
	}
}