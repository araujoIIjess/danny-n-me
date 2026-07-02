///@description VARIAVEIS
estado = player_movimento;
#region MOVIMENTO
hspd = 0;
vspd = 0;
spd = 0;//O VALOR DA VELOCIDADE É DADO NA FUNCAO DE MOVIMENTO
inputDirection = 0;
inputMagnitude = 0;
xDir = 0;
yDir = 0;
//COORDENADAS DO MOUSE
mouseDir = 0;//floor((point_direction(x, y, mouse_x, mouse_y)+45)/90) mod 4;

#region DASH
dash = false;
dash_dir = 0;
dash_vspd = 0;
dash_hspd = 0;
dash_spd = 15;



#endregion
#endregion

#region LEVEL
//NIVEL DO JOGADOR
player_level = 0;
//XP DO JOGADOR
player_xp = 0; //COMEÇA EM 0, OBVIAMENTE
//QUANTIDADE DE XP NECESSARIA PRA PASSAR PARA O PROXIMO NÍVEL
/*INDEX 0: NVL 1
INDEX 1: NVL 2
INDEX 3: NVL 3
INDEX 4: NVL 4*/
player_next_level = [100, 200, 350, 600, 800];
//TODAS AS STATS DO JOGADOR VÃO DEPENDER DO LEVEL

#endregion

#region STATS

max_vida = [5, 10, 15, 20, 50];//CADA NIVEL TEM SUA VIDA
vida = max_vida[player_level];

max_stamina = [100, 200, 250, 300, 500];//CADA NIVEL TEM SUA STAMINA
stamina = max_stamina[player_level];

#region ATAQUE

ataque = false;
max_atk = [1, 2, 3, 4, 5];//CADA NIVEL TEM SEU ATK
//QUANDO HOUVER O SISTEMA DE NIVEIS, player_atkDmg SERÁ ARRAY
player_atkDmg = max_atk[player_level];

#endregion

#endregion



#region HIT
hit = false;//INTERRUPTOR
player_knockback_spd = 0;//VELOCIDADE DO KNOCKBACK
player_knockback_dir = 0;//DIREÇAO DO KNOCKBACK
#endregion















