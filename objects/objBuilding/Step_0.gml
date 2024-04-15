if(ww.state != State.play){ return; }

if(hp < 1){
	with(objUnit){
		if(bornAt == other.id){
			bornAt = noone;
		}
	}
	instance_destroy();
	return;
}

actCD --;
if(actCD < 1){
	actCD = actCDMax;
	if(percent(actChance)){
		
		
		if(spawn != noone){
			var b = y + 64 * (floor(sprite_height / 64) - 1);
			var a = irandom_range(0, floor(sprite_width / 64) - 1);
			a = x + (a * 64);
			var s = instance_create_depth(a + 32, b + 32, ww.layerM, spawn);
			s.bornAt = id;
		}
		
		
	}
}