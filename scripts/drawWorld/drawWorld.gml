//Retornar a coordenada da textura do bloco especifico
function verifyBlock(blockName)
{
	switch blockName
	{
		case "teste":{return [0, 12];}
		case "bedrock":{return [3, 1];}
		
		case "oakPlanks":{return [5, 0];}
		case "dirt":{return [2, 0];}
		case "grass":{return [0, 0];}
		default:{return false;}
	}
}

//Desenhar o Bloco
function drawBlock(blockPosition, placeX, placeY)
{
	placeBlock(16 * blockPosition[0], 
						16 * blockPosition[1], 
						placeX, placeY, 16, 16);
}

function placeBlock(blockX, blockY, placeX, placeY, sizeX, sizeY)
{
	draw_sprite_part(Sprite_Blocks, 0, blockX, blockY,sizeX, sizeY, placeX, placeY);
}




function salvarStepBlocksManager()
{
	if instance_exists(Obj_Block)
		{
			var xPosition = X * 16;
			var yPosition = Y * 16;
			
			//Quando der refresh no mapa, não duplicar blocos já colocados
			var canPlaceBlocks = true
			with(Obj_Block) 
			{
				if xPosition == x and yPosition == y
				{
					canPlaceBlocks = false
				}
			}
			
			if canPlaceBlocks = true
			{
				var blockPosition = verifyBlock(global.world[X][Y])
				if blockPosition != false
				{
					var blockInstance = instance_create_layer(xPosition, yPosition, "Blocks", Obj_Block);
					with (blockInstance)
					{
						blockPlace = blockPosition
					}
				}
			}
		}
}