#region MOVIMENTO
randomise();
hit = false;
enemy_state = enemy_movement;
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
slime_aggr_dist = 100; //A PARTIR DESSA DISTANCIA FICA AGRESSIVO
slime_knockSpd = 0;
slime_knockDir = 0;
alarm[0] = 1;
#endregion