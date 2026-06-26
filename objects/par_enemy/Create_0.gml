randomise();

estado = enemy_movement;

#region MOVIMENTO
//VELOCIDADE VERTICAL E HORIZONTAL
hspd = 0;
vspd = 0;
//VELOCIDADE DO SLIME -->VARIA CONFORME O TIPO<--
slime_spd = [0.3, 0.7];
//COORDENADAS PARA ONDE SE VAI MOVER
random_x = 0;
random_y = 0;
#endregion

#region HIT E KNOCKBACK
//VIDA DOS SLIMES
slime_hp = [3, 2];
//CONTROLE DO ESTADO DE HIT
hit = false;
//VELOCIDADE DO KNOCKBACK -->SEU VALOR É DADO NO OBJ DA HITBOX
slime_knockSpd = 0;
//DIRECÇAO DO KNOCKBACK -->SEU VALOR É DADO NO OBJ DA HITBOX
slime_knockDir = 0;
//APÓS COLIDIR COM A HITBOX, FICA UM PEQUENO TEMPO SEM PODER TOMAR DANO
hit_cooldown = false; //QUANDO ESTIVER INVULNERAVEL FICA TRUE
//VÁRIAVEL QUE DEFINE O TEMPO DE COOLDOWN -->VARIA CONFORME O SLIME TYPE
hit_cooldown_time = [9, 5];
#endregion

#region PERSEGUI JOGADOR
//REMINDER:
//INDEX 0: SLIME GRANDE
//INDEX 1: SLIME PEQUENO
//INDEX 2: undefined
//VERIFICA SE O JOGADOR ESTÁ A n PIXEIS DE DISTANCIA -->VARIA CONFORME O SLIME TYPE
slime_aggr_dist = [300, 170]; 
//VELOCIDADE QUANDO ESTIVER AGRESSIVO
slime_aggr_spd = [1.7, 3];
//SE ESTIVER EM DASH É TRUE, SE N ESTIVER É FALSE
slime_dash = false;
//VELOCIDADE E DIREÇAO DO DASHs
slime_dash_spd = [5, 15];
slime_dash_dir = 0;
//COOLDOWN DO DASH
cooldown = [45, 24];
slime_dash_cooldown = 0;
#endregion

alarm[0] = 1;


