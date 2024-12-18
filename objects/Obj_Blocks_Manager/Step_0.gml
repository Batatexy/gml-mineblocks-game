for (var X = findPositionMinor(Obj_Player.y, -6); X < findPositionMajor(Obj_Player.y, 6, row); X++) 
{
	for (var Y = findPositionMinor(Obj_Player.x, -10); Y < findPositionMajor(Obj_Player.x, 10, col); Y++)
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