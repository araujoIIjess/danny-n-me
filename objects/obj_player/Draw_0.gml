//SE ESTIVER NO ESTADO DE HIT
if hit == true{
	//INICIA O EFEITO DE FLASH
	gpu_set_fog(true, c_red, 0, 0);
	//PASSA PARA O SPRITE DO JOGADOR
	draw_self();
	//TERMINA O EFEITO DE FLASH
	gpu_set_fog(false, c_white, 0, 0);
}else{
	//SE NAO ESTIVER A TOMAR HIT APENAS CONTINUA NO SPRITE NORMAL
	draw_self();
}