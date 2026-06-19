function enemy_mudar_estado(){
	//VARIAVEL Q VAI DETERMINAR O PROXIMO ESTADO
	var _nextState = choose(enemy_movement , enemy_idle);
	if _nextState == enemy_movement{
		estado = enemy_movement;
	}else if _nextState == enemy_idle{
		estado = enemy_idle;	
	}
	 
	
	
	
	
	
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
	var _dist = distance_to_point(random_x , random_y);
	image_speed = 1;
	
	//SE A DISTANCIA FOR MENOR QUE A VELOCIDADE ELE SE DESCOLA ATE O PONTO
	//slime_spd VAI FUNCIONAR COMO UMA MARGE DE ERRO 
	//SE _dist FOR MENOR É PORQUE PDOE SE DESLOCAR ATÉ LÁ
	if _dist > slime_spd{ 
		var _moveDir = point_direction(x , y , random_x , random_y);
		
		hspd = lengthdir_x(slime_spd , _moveDir);
		vspd = lengthdir_y(slime_spd , _moveDir);
		//SE ESTIVER PERTO DA PAREDE
		//ELE VIRA-SE, E CONTINUA A ANDAR
		
		
		enemy_collisions();
	}
	#region MUDANDO A DIREÇAO ANTES DE COLIDIR
	#endregion

}

function enemy_idle(){

	//APENAS PARA E RESPIRA UM POUCO
	enemy_collisions();
	image_speed = 0.5;

	
}
	
function enemy_chasing(){
	
}