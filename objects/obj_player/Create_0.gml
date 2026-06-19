///@description VARIAVEIS
estado = player_movimento;
#region MOVIMENTO
hspd = 0;
vspd = 0;
spd = 0;
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

#region ATAQUE

ataque = false;

#endregion

max_vida = 20;
vida = max_vida;

max_stamina = 100;
stamina = max_stamina;