function unitShoot(){
	
	if(!rangedAttack){ return false; }
	
	if(foeInRange == noone){ return false; }
	
	repeat(20){
		instance_create_depth(x + (image_xscale * 4) + irandom_range(-8, 8), y, ww.layerE, objSmoke);
		instance_create_depth(foeInRange.x, foeInRange.y, ww.layerE, objSpark);
	}
	
	
	foeInRange.hp -= gunPower;
	actCD = gunLoadTime;
	return true;
	
	
}