



if(keyboard_check_pressed(vk_enter)){
	ww.state = State.map;
	ww.skipStep = true;
	instance_destroy();
}