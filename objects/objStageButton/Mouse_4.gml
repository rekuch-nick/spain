


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