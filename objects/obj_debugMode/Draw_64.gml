//SE ESTIVER EM MODO DE DEBUG
//ADDED 30/06/26
if global.debugMode == true{
	//EXIBE AS STATS DO JOGADOR
	var _playerHp = obj_player.vida;
	var _playerSt = obj_player.stamina;
	var _playerLvl = obj_player.player_level;
	var _playerXp = obj_player.player_xp;
	var _xx = room_width / 5;
	var _yy = room_height / 5;
	
	draw_text(_xx, _yy, "Hp: " + string(_playerHp));
	/*show_debug_message("Vida: " + string(obj_player.vida))*/
	draw_text(_xx, _yy + 15, "ST: " + string(_playerSt));
	draw_text(_xx, _yy + 25, "LVL: " + string(_playerLvl));
	draw_text(_xx, _yy + 35, "XP: " + string(_playerXp));
	
	/*draw_text(320, 140, "XP: " + string(player_xp));
	draw_text(320, 160, "HP: " + string(vida));
	draw_text(320, 180, "ST: " + string(stamina));
	draw_text(320, 200, "LVL: " + string(player_level));*/
	
}
	