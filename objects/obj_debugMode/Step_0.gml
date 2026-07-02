//var _debugInit = keyboard_check_pressed(ord("Z"));
//ENTRANDO NO MODO DE DEBUG
/*if global.dbm{
	//SE APERTAR TAB ENTRA NO MODO DE DEBUG
	debugMode = true;
	show_debug_message("Entrou no modo de debug");
	
}else{
	debugMode = false;
	show_message("Saiu do modo de depuração");
}*/

//ADDED 30/06/26
//ENTRANDO NO MODO DE DEBUG
var _enterDebug = keyboard_check_pressed(vk_tab)  //keyboard_check_pressed(vk_shift);
//SAINDO DO MODO DE DEBUG
var _exitDebug = keyboard_check_pressed(vk_shift);
//SE APERTAR TAB ENTRA EM MODO DEBUG
if _enterDebug{
	//show_message("Deu sertu")
	global.debugMode = true;//AQUI ESTARÁ EM MODO DEBUG
	
}
//SE APERTAR SHIFT SAI DO MODO DEBUG
if global.debugMode == true && _exitDebug{
	global.debugMode = false;//AQUI SAIRÁ DO MODO DEBUG
}
/*if global.enterDebug{
	show_debug_message("Deu serto");
}*/
