with(other){
	hit = true;
	slime_hp -= 1;
	var _dir = point_direction(obj_player.x, obj_player.y, x, y);
	slime_knockDir = _dir;
	slime_knockSpd = 5;
	estado = enemy_hit;
	alarm[1] = 5;
	
	
}