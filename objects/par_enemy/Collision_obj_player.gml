with(other){
	hit = true;
	var _dir = point_direction(other.x, other.y, x, y);
	player_knockback_dir = _dir;
	player_knockback_spd = 5;
	alarm[2] = 5;//KNOCKBACK DURA 5frames	
}//STILL IN WORk