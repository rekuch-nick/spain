function stepPlayCamera(){
	if(state != State.play){ return; }
	
	/*
	try{
		var aa = camera_get_view_x(view_camera[0]);
		var bb = camera_get_view_y(view_camera[0]);
	} catch (_e){
		return;
	}*/
	
	
	
	zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), 0.5, 2);
	//Get current size
	var view_w = camera_get_view_width(view_camera[0]);
	var view_h = camera_get_view_height(view_camera[0]);

	//Set the rate of interpolation
	var rate = 0.2;

	//Get new sizes by interpolating current and target zoomed size
	var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
	var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

	//Apply the new size
	camera_set_view_size(view_camera[0], new_w, new_h);
	cameraBounds();

	var vpos_x = camera_get_view_x(view_camera[0]);
	var vpos_y = camera_get_view_y(view_camera[0]);

	//change coordinates of camera so zoom is centered
	var new_x = lerp(vpos_x,vpos_x+(view_w - zoom_level * default_zoom_width)/2, rate);
	var new_y = lerp(vpos_y,vpos_y+(view_h - zoom_level * default_zoom_height)/2, rate);
	
	
	
	
	if(mouse_wheel_down() || mouse_wheel_up()){ return; }
	
	
	
	
	
	
	
	if( device_mouse_x_to_gui(0) < hud.x ){
		if(mouse_check_button(mb_right) && !mouse_check_button_pressed(mb_right) ){
			
			var a = camera_get_view_x(view_camera[0]);
			var b = camera_get_view_y(view_camera[0]);
			
			var aa = a + (xLastDragPoint - mouse_x);
			var bb = b + (yLastDragPoint - mouse_y);
			
			camera_set_view_pos(view_camera[0], aa, bb );
			cameraBounds();
			
			//aa = clamp(aa, 0, room_width - camera_get_view_width(view_camera[0]) + (hud.sprite_width * zoom_level) );
			//bb = clamp(bb, 0, room_height - camera_get_view_height(view_camera[0]));
			
			//_debug_message(camera_get_view_width(view_camera[0]))
			
			//camera_set_view_pos(view_camera[0], aa, bb );
			
		} else {
			xLastDragPoint = mouse_x;
			yLastDragPoint = mouse_y;
		}
	}
	
	
}