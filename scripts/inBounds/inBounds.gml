function inBounds(a, b){
	if(a < 0 || b < 0){ return false; }
	if(a >= room_width / 64){return false; }
	if(b >= room_height / 64){return false; }
	return true;	
}