///@description TEMPO ENTRE OS ESTADOS
estado = enemy_mudar_estado;
//TEMPO QUE VAI FICAR ENTRE CADA ESTADO
alarm[0] = irandom_range(30 , 240);
if alarm[0] > 30 show_debug_message("Maior que 30");
random_x = irandom_range(0 , room_width);
random_y = irandom_range(0 , room_height);