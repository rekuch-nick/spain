if(ww.state != State.map){ return; }





if(device_mouse_x_to_gui(0) >= x && 
			device_mouse_x_to_gui(0) < x + sprite_width && 
			device_mouse_y_to_gui(0) >= y && 
			device_mouse_y_to_gui(0) < y + sprite_height){
				
	image_xscale = 4.5;
	image_yscale = 4.5;
	x = xx - (sprite_width / 18);
	y = yy - (sprite_height / 18);

	if(mouse_check_button_pressed(mb_left)){
		for(var a=0; a<room_width/64; a++){ for(var b=0; b<room_height/64; b++){
			ww.bmap[a, b] = noone;
		}}

		room_goto(r);
		ww.rallyPoint = noone;
		ww.firstFrame = true;
		ww.state = State.play;
		ww.zoom_level = 1;
		ww.default_zoom_width = camera_get_view_width(view_camera[0]);
		ww.default_zoom_height = camera_get_view_height(view_camera[0]);
	}
	
} else {
	image_xscale = 4;
	image_yscale = 4;
	x = xx;
	y = yy;
}
