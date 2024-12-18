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

//Renderizar partes do mapa
function findPositionMinor(position, value)
{
	if (int64(position / 16) + value > 0)
	{
		return int64(position / 16) + value;
	}
	else
	{
		return 0
	}
}

function findPositionMajor(position, value, size)
{
	if (int64(position / 16) + value < size)
	{
		return int64(position / 16) + value;
	}
	else
	{
		return size
	}
}