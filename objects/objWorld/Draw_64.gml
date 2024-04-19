if(state == State.endPlay){
	draw_set_halign(fa_center);
	draw_text_transformed(683, 300, endPlayMessage, 3, 3, choose(-1, 0, 1));
	draw_set_halign(fa_left);
}