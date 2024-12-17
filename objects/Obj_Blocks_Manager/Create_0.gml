//Criação da matriz do mundo
global.world = 
[
    ["grass", "grass", "grass", "grass","grass","grass",
	"grass","grass","grass","grass","grass","grass","grass","grass","grass",
	"grass","grass","grass","grass","grass","grass","grass","grass","grass",
	"grass","grass","grass","grass","grass","grass","grass","grass","grass",
	],
	["oakPlanks", "dirt", "dirt", "dirt"],
	["oakPlanks", "dirt", "dirt", "dirt"],
	["dirt", "dirt", "dirt", "dirt"],
	["dirt", "dirt", "dirt", "dirt"]
];


timer = 10

//Gerar todos os blocos
for (var X = 0; X < array_length(global.world); X++) 
{
	for (var Y = 0; Y < array_length(global.world[X]); Y++) 
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
			

