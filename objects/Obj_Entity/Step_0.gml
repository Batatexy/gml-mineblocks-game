if global.pause = 0
{

x += horizontalSpeed;
y += verticalSpeed;

actualSpeed = moveSpeed;

//Parte de movimentação, desenvolvida por: Peyton Burnham
//Força Horizontais
horizontalSpeed = moveDirection * actualSpeed;

if place_meeting(x + horizontalSpeed, y, Obj_Block)
{
	var horizontalPixelCheck = global.subPixel * sign(horizontalSpeed);
	while !place_meeting(x + horizontalPixelCheck, y, Obj_Block)
	{
		x += horizontalPixelCheck;
	}

	horizontalSpeed = 0;
}

//Força Verticais
verticalSpeed += gravitySpeed;

if place_meeting(x,y + verticalSpeed, Obj_Block)
{
	var verticalPixelCheck = global.subPixel * sign(verticalSpeed);
	while !place_meeting(x , y + verticalPixelCheck, Obj_Block)
	{
		y += verticalPixelCheck;
	}
	verticalSpeed = 0;
}


	//Todos os comandos a seguir são impedidos ao zerar a vida
	if life > 0
	{
		//Desenvolvido por: Peyton Burnham, Direção que o personagem anda
		moveDirection = right - left;
		
		//Pular
		if space and place_meeting(x,y +1, Obj_Block)
		{
			verticalSpeed = jumpSpeed;
		}
		
		
		if !shift
		{
			moveSpeed = defaultMoveSpeed;
			sprite_index = Sprite_PlayerNormalCollision;
			
			//Andando
			if ctrl and hunger > 6
			{
				moveSpeed = defaultMoveSpeed * 1.5;
			}
		}
		else
		{
			moveSpeed = defaultMoveSpeed / 3;
			sprite_index = Sprite_PlayerCrounchCollision;
		}
			
			
		
	}
	//End if life > 0
	else
	{
		
	}
}
//if global.pause = 1
else
{
	
}