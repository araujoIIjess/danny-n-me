with(other){
	var _dir = point_direction(obj_player.x, obj_player.y, x, y);
	//MESMO ESTANDO INVULNERAVEL AINDA PODE TOMAR KNOCK
	slime_knockDir = _dir;
	slime_knockSpd = 5;
	estado = enemy_hit;
	//TEMPO QUE DURA O KNOCKBACK DO INIMIGO
	alarm[1] = 5;
	//SE -->NÃO<-- ESTIVER INVULNERAVEL
	if hit_cooldown == false{
		//TIRA 1 DE VIDA AO COLIDIR COM A HITBOX
		slime_hp -= 1;
		//PODE ENTRAR EM HIT
		hit = true;
		//ATIVA O ALARME DA INVULNERABILIDADE
		hit_cooldown = true;
		//TEMPO DA INVULNERABILIDADE
		alarm[3] = 5;
	
	}


	
	
}