draw_text(0, 0, string(device_mouse_x_to_gui(0)) + " / " + string(hud.x))






if(ww.state != State.play){ return; }

draw_set_alpha(.2);
draw_rectangle_color(xCur * 64, yCur * 64, xCur * 64 + 64, yCur * 64 + 64, c_white, c_yellow, c_white, c_yellow, false);
draw_set_alpha(1);

if(rallyPoint != noone){
	draw_set_alpha(choose(.4, .5));
	draw_sprite_stretched(imgSpanFlag, 0, rallyPoint.a * 64, rallyPoint.b * 64, 64, 64);
	draw_set_alpha(1);
}


if(cursor != noone){
	var col = (!buildBlocker && buildInRange) ? c_white : c_red;
	//draw_sprite_ext(cursor.img, 0, xCur * 64, yCur * 64, 4, 4, 0, col, .5);
	draw_sprite_stretched_ext(cursor.img, 0, xCur * 64, yCur * 64, cursor.w * 64, cursor.h * 64, col, .5);
	
}