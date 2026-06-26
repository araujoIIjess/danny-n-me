function enemy_mudar_estado(){
	//VARIAVEL Q VAI DETERMINAR O PROXIMO ESTADO
	var _nextState = choose(enemy_movement , enemy_idle);
	if _nextState == enemy_movement{
		estado = enemy_movement;
	}else if _nextState == enemy_idle{
		estado = enemy_idle;	
	}
	var _xx = obj_player.x;
	var _yy = obj_player.y;
	var _playerDist = point_distance(_xx, _yy, x, y);
	
	if _playerDist < slime_aggr_dist{
		
		estado = enemy_perseguindo;
	}
	if _playerDist < slime_aggr_dist && slime_dash == false && slime_dash_cooldown <= 0{
		//TEMPO DE DURAÇAO DO DASH
		alarm[2] = 12;
		slime_dash = true;
		slime_dash_dir = point_direction(x, y, _xx, _yy);//FIXED:23/06/26
		estado = enemy_dash;
	}
		
/*if slime_dash == false{
slime_dash = true
alarm[2] = 10;
var _dir = point_direction(_xx, _yy, x, y);
hspd = lengthdir_x(slime_dash_spd, _dir);
vspd = lengthdir_y(slime_dash_spd, _dir);
enemy_collisions();
		
}*/	
}


//ESTADO DE MOVIMENTO
function enemy_collisions(){
	if place_meeting(x + hspd , y , obj_parede){
		while !place_meeting(x + sign(hspd) , y , obj_parede){
			x += sign(hspd);
		}
		hspd = 0;	
	}
	/*if place_meeting(x + 2, y, obj_parede){
		var _moveDir = point_direction(x, y, )
		hspd = lengthdir_x(hspd, _moveDir)
	}*/
	x += hspd
	
	if place_meeting(x , y + vspd , obj_parede){
		while !place_meeting(x , y + sign(vspd) , obj_parede){
			y += sign(vspd);
		}
		vspd = 0;
	}
	y += vspd;
}
	
function enemy_movement(){
	
	
	//DISTANCIA DO PONTO
	var _dist = distance_to_point(random_x, random_y);
	image_speed = 1;
	
	//SE A DISTANCIA FOR MENOR QUE A VELOCIDADE ELE SE DESCOLA ATE O PONTO
	//slime_spd VAI FUNCIONAR COMO UMA MARGE DE ERRO 
	//SE _dist FOR MENOR É PORQUE PDOE SE DESLOCAR ATÉ LÁ
	if _dist > slime_spd{ 
		var _moveDir = point_direction(x , y , random_x , random_y);
		
		var _xx = lengthdir_x(slime_spd , _moveDir);
		var _yy = lengthdir_y(slime_spd , _moveDir);
		hspd = _xx;
		vspd = _yy;
		enemy_collisions();
	}
	

}

function enemy_idle(){

	//APENAS PARA E RESPIRA UM POUCO
	enemy_collisions();
	image_speed = 0.5;

	
}
	
function enemy_hit(){
	slime_knockSpd = lerp(slime_knockSpd, 0, 0.05);
	hspd = lengthdir_x(slime_knockSpd, slime_knockDir);
	vspd = lengthdir_y(slime_knockSpd, slime_knockDir);
	
	enemy_collisions();
	
}

function enemy_perseguindo(){
		var _playerx = obj_player.x;
		var _playery = obj_player.y;
		//show_debug_message("CHASE");
		var _dir_To_player = point_direction(x, y, _playerx, _playery);
		hspd = lengthdir_x(slime_aggr_spd, _dir_To_player);
		vspd = lengthdir_y(slime_aggr_spd, _dir_To_player);
		enemy_collisions();
}

function enemy_dash(){
	//SE MOVE EM DIRECÇAO AO JOGADOR
	//show_debug_message("DASH")
	hspd = lengthdir_x(slime_dash_spd, slime_dash_dir);
	vspd = lengthdir_y(slime_dash_spd, slime_dash_dir);
	enemy_collisions();
	
}
