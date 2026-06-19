estado();

//SE O alarm[1] TERMINAR ELE REGENERA A STAMINA
if alarm[1] <= 0{

	stamina += 1;
}
stamina = clamp(stamina, 0, max_stamina);
