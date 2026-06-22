function SpriteChange(_canAttack = false){
	//SCRIPT PARA FAZER A TROCA DE SPRITES EM 4 DIRECÇOES
	//OBJECTIVO: TROCAR QUALQUER SPRITE PARA A DIRECÇAO DEFINIDA
	//LEMBRETE DE QUE MOUSEDIR RETORNA 4 DIRECÇOES
	
	
	#region VARIAVEIS
	//JOGADOR
	/*var  _playerX = obj_player.x;
	var _playerY = obj_player.y;
	var _player = obj_player;*/
	var _playerHspd = self.hspd;
	var _playerVspd = self.vspd;
	var _mouseDir = self.mouseDir;
	var _playerAtkState = self.ataque;
	//var _canAttack = false;
	var _idle = false; 
	var _walk = false;
	
	//COORDENADAS DO MOUSE
	//var _mouseDir = _playerMouseDir;//floor((point_direction(_playerX, _playerY, mouse_x, mouse_y)+45)/90) mod 4;
	
	//DIREÇOES DOS SPRITES
	static _playerSprite = {
		//DICIONARIO COM TODOS OS SPRITES
		idle: [
			spr_player_back_idle, 
			spr_player_left_idle, 
			spr_player_front_idle, 
			spr_player_right_idle
		],
		
		walk: [
			spr_player_back_walk, 
			spr_player_left_walk, 
			spr_player_front_walk, 
			spr_player_right_walk
		],
		
		atk: [
			spr_player_back_attk, 
			spr_player_left_attk, 
			spr_player_front_attk, 
			spr_player_right_attk
		],
		//REMINDER
		//POS 0: TRÁS
		//POS 1: ESQUERDA
		//POS 2: FRENTE
		//POS 3: DIREITA
	}
	#endregion
	
	//_mouseDir VAI PEGAR A DIRECÇAO DO CURSOR DO MOUSE E CONVERTE-LA PARA 4 DIRECÇOES
	//var _mouseDir = floor((point_direction(_playerX, _playerY, mouse_x, mouse_y)+45)/90) mod 4;
	
	//MUDANÇA DE SPRITES
	if _playerHspd == 0 && _playerVspd == 0{
		
		_idle = true; _walk = false;
		//show_debug_message("IDLE"+string(_idle));
		
		switch(_mouseDir){
			
		//CASO ESTEJA PARADO
		//EXECUTA ANIMAÇAO DE IDLE
			case 1: sprite_index = _playerSprite.idle[0]; break;
			case 2: sprite_index = _playerSprite.idle[1]; break;
			case 3: sprite_index = _playerSprite.idle[2]; break;
			default: sprite_index = _playerSprite.idle[3]; break;
		}
	}else{
		
		//SE ESTIVER EM MOVIMENTO
		//EXECUTA ANIMAÇAO DE WALK
		_walk = true; _idle = false;
		//show_debug_message("MOV"+string(_walk));
		
		switch(_mouseDir){
			case 1: sprite_index = _playerSprite.walk[0]; break;
			case 2: sprite_index = _playerSprite.walk[1]; break;
			case 3: sprite_index = _playerSprite.walk[2]; break;
			default: sprite_index = _playerSprite.walk[3]; break;
		}
	}
	
	//SE APERTAR O BOTAO DE ATAQUE
	//CANATTACK FICA TRUE
	if _canAttack != false && _playerAtkState != true{
		image_index = 0;
			//SE NAO ESTIVER ATACANDO
			//PODE ATACAR
			switch(_mouseDir){
				case 1: sprite_index = _playerSprite.atk[0]; break;
				case 2: sprite_index = _playerSprite.atk[1]; break;
				case 3: sprite_index = _playerSprite.atk[2]; break;
				default: sprite_index = _playerSprite.atk[3]; break;
			}
	}
		
}
	
	/*if (hspd == 0 || vspd == 0){
		_parado = true;
			if _parado == true{
				switch(_mouseDir){
					case 1: sprite_index = _playerSprites.idle[0]; break;
					case 2: sprite_index = _playerSprites.idle[1]; break;
					case 3: sprite_index = _playerSprites.idle[2]; break;
					default: sprite_index = _playerSprites.idle[3]; break;
				}
			}else{_parado = false;}
	}*/
	
	/*if hspd <= 0 || vspd <= 0{
		var _spritesIdle = [spr_player_back_idle, spr_player_front_idle, spr_player_left_idle, spr_player_right_idle];
		switch(_mouseDir){
			
		case 1: sprite_index = _spritesIdle[0]; break;
		
		case 2: sprite_index = _spritesIdle[2]; break;
		
		case 3: sprite_index = _spritesIdle[1]; break;
		
		default: sprite_index = _spritesIdle[3]; break;
		}
	}*/
	
	
	
	//PARA CADA DIRECÇAO DO MOUSE, EXIBE O SPRITE DESSA DIRECÇAO
	/*
		if _mouseDir != 0{
			show_debug_message(_mouseDir);	
		}
	switch(_mouseDir){
	
		//DIREITA-CIMA
		case 1:
			sprite_index = spr_player_back_walk;
			
		
		break;
		//ESQUERDA-CIMA
		case 2:
			sprite_index = spr_player_left_walk;
		
		break;
		//ESQUERDA
		case 3:
			sprite_index = spr_player_front_walk;
		
		break;
		//DIREITA
		default:
			sprite_index = spr_player_rigth_walk;
		break;
		
	}
	*/
	
