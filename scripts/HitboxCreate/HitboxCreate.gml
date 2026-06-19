function HitboxCreate(_hitboxDist ,_xx = obj_player.x , _yy = obj_player.y){
	//COORDENADAS QUE SE VAI CRIAR A  HITBOX
	var _hitboxX = 0;
	var _hitboxY = 0;
	
	//_hitboxDist = 0;
	//_dir VAI SEMPRE RETORNAR 0,1,2,3 E PEGA A DIRECAO DO MOUSE
	//nota: SOMAR POR 45 VAI DAR UMA ROTACIONADA DE 45 graus
	
	var _dir = self.mouseDir;//floor((point_direction(_xx , _yy , mouse_x , mouse_y)+45)/90) mod 4;
	
	//COORDENADAS DO JOGADOR --> REFERENCIAL <--
	/*var _xx = obj_player.x;
	var _yy = obj_player.y;*/
	//UMA MANEIRA MAIS OTIMIZADA:
	switch(_dir){
		default:
		//SE ESTIVER A OLHAR PARA A DIREITA
			_hitboxX = _xx + _hitboxDist; _hitboxY = _yy;
		break;
		
		case 1:
		//SE ESTIVER A OLHAR PARA CIMA
			_hitboxX = _xx; _hitboxY = _yy - _hitboxDist;
		break;
		
		case 2:
		//SE ESTIVER A OLHAR PARA A ESQUERDA
			_hitboxX = _xx - _hitboxDist; _hitboxY = _yy;
		break;
		
		case 3:
		//SE ESTIVER A OLHAR PARA BAIXO
			_hitboxX = _xx; _hitboxY = _yy + _hitboxDist;
		break;
	}
	instance_create_layer(_hitboxX , _hitboxY , "Instances" , obj_playerHitbox);
	
	/*
	//PARA CADA VALOR DE _dir CRIA A HITBOX EM UM LADO ESPECIFICO
	switch(_dir){
		//O VALOR default SERÁ 0
		default:
			instance_create_layer(_xx + _hitboxDist , _yy , "Instances" , obj_playerHitbox);
		break
		
		case 1:
			//SE ESTIVER A OLHAR PRA CIMA
			instance_create_layer(_xx , _yy - _hitboxDist , "Instances" , obj_playerHitbox);
		break
		
		case 2:
			//SE ESTIVER A OLHAR PARA A ESQUERDA
			instance_create_layer(_xx - _hitboxDist , _yy , "Instances" , obj_playerHitbox);
		break
		
		case 3:
			//SE ESTIVER A OLHAR PARA BAIXO
			instance_create_layer(_xx , _yy + _hitboxDist , "Instances" , obj_playerHitbox);
		break
	}
	*/

}