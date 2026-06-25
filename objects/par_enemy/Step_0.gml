estado();
if slime_hp <= 0{
	instance_destroy();
}
if slime_dash_cooldown > 0{//FIXED 23/06/26
	slime_dash_cooldown -= 1;
}

//SE COLIDIU COM A HITBOX, FICA UM TEMPO SEM TOMAR DANO
