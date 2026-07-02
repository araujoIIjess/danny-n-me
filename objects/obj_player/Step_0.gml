estado();
//SISTEMA DE POWER-UP
//POR AGORA AS QUANTIDADES DE XP PRA SUBIR DE NIVEL SERÃO FIXAS
//NVL 1 -> NVL 2 -> 100xp
/*if player_level < 5{
	if(player_xp >= player_next_level[player_level]){
		//SE O XP ATUAL FOR MAIORR OU IGUAL AO NECESSARIO PRA PASSAR DE NÍVEL
		//ELE PASSA DE NÍVEL
		player_level += 1;
		//player_xp = player_xp - player_next_level[level];
		//A STAMINA AUMENTA
		/*stamina = max_stamina[level];
		//A VIDA TAMBEM AUMENTA
		vida = max_vida[level];
		
	}
}
show_debug_message(string(player_xp));*/
//SE O alarm[1] TERMINAR ELE REGENERA A STAMINA
if alarm[1] <= 0{

	stamina += 1;
}
stamina = clamp(stamina, 0, max_stamina[player_level]);
