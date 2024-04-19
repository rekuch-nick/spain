function cameraBounds(){
	
	
	var a = camera_get_view_x(view_camera[0]);
	var b = camera_get_view_y(view_camera[0]);
	
	a = clamp(a, 0, room_width - camera_get_view_width(view_camera[0]) + (hud.sprite_width * ww.zoom_level) );
	b = clamp(b, 0, room_height - camera_get_view_height(view_camera[0]));

	camera_set_view_pos(view_camera[0], a, b);
}