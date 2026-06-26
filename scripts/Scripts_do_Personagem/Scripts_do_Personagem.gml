function player_colisao(){
	//SE COLIDIR FICA PARADO
	if place_meeting(x + hspd , y , obj_parede){
		//VERIFICAÇAO DE ESPAÇO ATE A COLISAO
		while !place_meeting(x + sign(hspd) , y , obj_parede){
			x += sign(hspd)	
		}
		hspd = 0;
		spd = 0;
	}
	x += hspd;
	
	//COLISAO NA VERTICAL
	if place_meeting(x , y + vspd , obj_parede){
		while !place_meeting(x , y + sign(vspd) , obj_parede){
			y += sign(vspd);
		}
		vspd = 0;	
		spd = 0;
	}
	y += vspd;

}

function player_movimento(){
#region VARIAVEIS
	//VARIAVEIS DE CONTROLE
	var _direita = keyboard_check(ord("D")) || keyboard_check(vk_right);
	var _esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);
	var _cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
	var _baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
	var _runButton = keyboard_check_direct(vk_lalt)
	var _dashButton = mouse_check_button_pressed(mb_left);
	var _atkButton = mouse_check_button_pressed(mb_right);
	var _playerX = obj_player.x;
	var _playerY = obj_player.y;
	mouseDir = MOUSEDIR; //global.mouseDir; //floor((point_direction(x , y , mouse_x , mouse_y)/90)/45);
	#endregion

	#region MOVIMENTO
	
	#region ANDAR E CORER
	xDir = _direita - _esquerda;
	yDir = _baixo - _cima;

	if xDir != 0 || yDir != 0{//SE FOR 1 OU - 1 SE MOVE
		if _runButton{
			spd = 10;
			/*stamina -= 10;*/
		}else{
			//SE NAO ESTIVER A CORRER ANDA
			spd = 5;	
		}
		
		//DIRECÇOES DO MOVIMENTO
		inputDirection = point_direction(x , y , x + xDir , y + yDir);
	
	}else{
		spd = 0;
	}
	
	#endregion

	hspd = lengthdir_x(spd , inputDirection);
	vspd = lengthdir_y(spd , inputDirection);
	
	#endregion

	
	#region DASH
	//ENTRANDO NO ESTADO DE DASH
	
	if _dashButton && stamina >= 15{
		//SE A STAMINA FOR MAIOR QUE 15
		dash_dir = point_direction(_playerX, _playerY, mouse_x, mouse_y); 
		//TEMPO QUE VAI DURAR O DASH
		alarm[0] = 5;
		//TEMPO PARA REGENERAR A STAMINA: 3s
		alarm[1] = 180;
		stamina -= 15;
		estado = player_dashState;
	}

	//CORREÇAO DE BUG --> PLAYER NÃO COLIDIA COM A PAREDE
	player_colisao();
	//CORRECÇÃO --> UHH, APENAS DEFINIR A FUNC DE COLISAO

	#endregion	
	
	
	#region ATAQUE 
	 if _atkButton && stamina >= 5{
		 //canAttack FICA TRUE
		SpriteChange(true);	 
		ataque = true;
		alarm[1] = 180;
		stamina -= 5;
		estado = player_ataque;
		
	 } else SpriteChange(false);
	
	#endregion
}



//ESTADO DE DASH
function player_dashState(){
	//DEFININDO DIREÇOES E VELOCIDADE DO DASH
	dash_hspd = lengthdir_x(dash_spd , dash_dir);
	dash_vspd = lengthdir_y(dash_spd , dash_dir);
	//VARIAVEIS QUE VÃO GUARDAR OS VALORES D HSPD E VSPD (ACIMA)
	
	hspd = dash_hspd;
	vspd = dash_vspd;
	
	var _inst = instance_create_layer(x , y , "Instances" , obj_player_dashEffect);
	_inst.sprite_index = sprite_index;
	/*_inst.image_alpha = image_alpha;*/
	
	player_colisao();
}
	
function player_sprite_change(){
	SpriteChange();	
}

	
function player_ataque(){
	//SE ESTIVER ACIMA DO PRIMEIRO FRAME CRIA A HITBOX
	if image_index >= 1{
		HitboxCreate(12);	
	}
	
	//QUANDO ACABAR A ANIMAÇAO
	if AnimationEnd(){
		ataque = false;
		estado = player_movimento;
	}
	
}
	
function player_hit(){
	//VELOCIDADES DO KNOCKBACK
	hspd = lengthdir_x(player_knockback_spd, player_knockback_dir);
	vspd = lengthdir_y(player_knockback_spd, player_knockback_dir);
	player_colisao();
}