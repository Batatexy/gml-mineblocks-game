
if timer > 0
{
	global.world = array_concat(global.world, [["teste", "teste"]]);
	timer--;
}

//Gerar todos os blocos
for (var X = 0; X < array_length(global.world); X++) 
{
	for (var Y = 0; Y < array_length(global.world[X]); Y++) 
	{
		if instance_exists(Obj_Block)
		{
			var xPosition = X * 16;
			var yPosition = Y * 16;
			
			//Quando der refresh no mapa, não duplicar blocos já colocados
			var canPlaceBlocks = true
			with(Obj_Block) 
			{
				if xPosition == y and yPosition == x
				{
					canPlaceBlocks = false
				}
			}
			
			if canPlaceBlocks = true
			{
				var blockPosition = verifyBlock(global.world[X][Y])
				if blockPosition != false
				{
					var blockInstance = instance_create_layer(yPosition, xPosition, "Blocks", Obj_Block);
					with (blockInstance)
					{
						blockPlace = blockPosition
					}
				}
			}
		}
	}
}