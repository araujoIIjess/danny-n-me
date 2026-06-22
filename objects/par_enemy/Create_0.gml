#region MOVIMENTO
randomise();
hit = false;
estado = enemy_movement;
hspd = 0;
vspd = 0;
//COORDENADAS PARA ONDE SE VAI MOVER
random_x = 0;
random_y = 0;
////////////////////
moveDir = 0;
xDir = 0;
yDir = 0;
slime_spd = [0.3, 0.7];
slime_hp = [3, 2];
	#region PERSEGUI JOGADOR
	slime_aggr_dist = 100; //A PARTIR DESSA DISTANCIA FICA AGRESSIVO
	slime_aggr_spd = 2;//QUANDO ESTIVER A PERSEGUIR FICA MAIS RAPIDO
	slime_dash = false;//INTERRUPTOR DO DASH
	slime_dash_spd = 10;
	slime_dash_dir = 0;
	slime_dash_cooldown = 0;
	cooldown = 10;
	
	
	
	#endregion
slime_knockSpd = 0;
slime_knockDir = 0;
alarm[0] = 1;
#endregion