if(ww.state != State.play || cursor == noone){ return; }


if(mouse_check_button_pressed(mb_left)){
	if(device_mouse_x_to_gui(0) >= x && device_mouse_x_to_gui(0) < x + sprite_width){
		if(device_mouse_y_to_gui(0) >= y && device_mouse_y_to_gui(0) < y + sprite_height){
			
			ww.cursor = {
				img: cursor.img,
				obj: cursor.obj,
				w: cursor.w, 
				h: cursor.h, 
				cost: cursor.cost,
				spawnCost: cursor.spawnCost,
				rang: cursor.rang,
			};
			with(objWorld){ buildCollisionMap(); }
			
		}
	}
}




