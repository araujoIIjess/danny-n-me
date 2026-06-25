randomise();

estado = enemy_movement;

#region MOVIMENTO
//VELOCIDADE VERTICAL E HORIZONTAL
hspd = 0;
vspd = 0;
//COORDENADAS PARA ONDE SE VAI MOVER
random_x = 0;
random_y = 0;
#endregion

#region HIT E KNOCKBACK
hit = false;
slime_knockSpd = 0;
slime_knockDir = 0;
//APÓS COLIDIR COM A HITBOX, FICA UM PEQUENO TEMPO SEM PODER TOMAR DANO
hit_cooldown = false; //QUANDO ESTIVER INVULNERAVEL FICA TRUE
#endregion

#region VARIAVEIS COM ARRAY
slime_spd = [0.3, 0.7];
slime_hp = [3, 2];
#endregion

#region PERSEGUI JOGADOR
//VERIFICA SE O JOGADOR ESTÁ A n PIXEIS DE DISTANCIA
slime_aggr_dist = 100; 
//VELOCIDADE QUANDO ESTIVER AGRESSIVO
slime_aggr_spd = 2;
//SE ESTIVER EM DASH É TRUE, SE N ESTIVER É FALSE
slime_dash = false;
//VELOCIDADE E DIREÇAO DO DASHs
slime_dash_spd = 10;
slime_dash_dir = 0;
//COOLDOWN DO DASH
cooldown = 45;
slime_dash_cooldown = cooldown;
#endregion

alarm[0] = 1;


