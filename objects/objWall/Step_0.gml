if(ww.state != State.play){ return; }

if(hp < 1){
	ww.bmap[xSpot, ySpot] = noone;
	instance_destroy();
}