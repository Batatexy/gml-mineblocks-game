//Retornar a coordenada da textura do bloco especifico
function verifyBlock(blockName)
{
	switch blockName
	{
		case "teste":{return [0, 192];}
		case "select":{return [0, 144];}
		
		case "bedrock":{return [48, 16];}
		case "grass":{return [0, 0];}
		case "chest":{return [160, 0];}
		
		
		case "oakPlanks":{return [80, 0];}
		case "dirt":{return [32, 0];}
		
		default:{return false;}
	}
}

//Desenhar o Bloco
function drawBlock(blockPosition, placeX, placeY)
{
	placeBlock(blockPosition[0], 
			   blockPosition[1], 
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