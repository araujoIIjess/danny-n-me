//draw_text(320 , 140 , string(player_xp));
//SE ESTIVER EM MOOD DEBUG, EXIBE AS STATS DO PLAYER
//DOESNT WORK
//ADDED: 30/06/26
var _debugMode = global.debugMode;
if _debugMode == true{
	show_debug_message(" ");
}else{
	draw_self();
}
