estado();
if slime_hp <= 0{
	instance_destroy();
}
if slime_dash_cooldown > cooldown{
	slime_dash_cooldown -= 1;
}