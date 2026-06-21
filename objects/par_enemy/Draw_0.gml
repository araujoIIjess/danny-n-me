if hit == true{
	//QUANDO TOMAR HIT PISCA NA COR BRANCA
	gpu_set_fog(true, c_white, 0, 0);
	draw_self();
	gpu_set_fog(false, c_white, 0, 0);
}else{
	draw_self();
}
draw_set_font(f_slime);
draw_text(x, y - 10, string(slime_hp));