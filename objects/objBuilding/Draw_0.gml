draw_self();
if(hp < hpMax){
	var w = sprite_width * (hp / hpMax);
	draw_rectangle_color(x, y, x + w, y + 4, c_red, c_red, c_maroon, c_maroon, false);
}
//w = sprite_width * (1 - (actCD / actCDMax));
//draw_rectangle_color(x, y + 5, x + w, y + 8, c_lime, c_lime, c_green, c_green, false);
if(!active){
	draw_sprite_stretched(imgInactive, 0, x + (sprite_width / 2) - 32, y + (sprite_height / 2) - 32, 64, 64);
}


