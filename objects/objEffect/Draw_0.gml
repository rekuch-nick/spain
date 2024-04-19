if(txt != noone){
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(x, y, txt, 0, 1000, 1.5, 1.5, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_ext_transformed_color(x, y, txt, 0, 1000, 1.5, 1.5, 0, tCol, tCol, tCol, tCol, random_range(image_alpha / 2, image_alpha));
	//draw_text_color(x, y, txt, tCol, tCol, tCol, tCol, 1);
	draw_set_halign(fa_left);
}
draw_self();