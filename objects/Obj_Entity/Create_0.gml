//Inputs:
space = false;
right = false;
left = false;
down = false;
shift = false;
ctrl = false;

keyInventory = false;
keyDrop =  false;
keyChangeHands = false;

mouse1 = false;
mouse2 = false;



life = 20;
hunger = 20;

	
//Movimentação:
	defaultMoveSpeed = 1;
	moveSpeed = defaultMoveSpeed;
	
	//Essa é a velocidade exibida na tela
	actualSpeed = 0;

	//Direção de Movimento
	moveDirection = 1;

	//Movimentação Horizontal
	horizontalSpeed = 0;

	//Movimentação Vertical
	verticalSpeed = 0;
	terminalVelocity = 4;
	gravitySpeed = .275;
	jumpSpeed = -3.3;