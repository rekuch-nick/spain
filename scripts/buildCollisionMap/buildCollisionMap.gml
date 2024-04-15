function buildCollisionMap(){
	
	cmap = noone;
	
	for(var a=0; a<room_width/64; a++){
		for(var b=0; b<room_height/64; b++){
			cmap[a, b] = 0;
		}
	}
	
	with(objConstructionItem){
		
		for(var a=x1; a<x2; a++){
			for(var b=y1; b<y2; b++){
				other.cmap[a, b] = 1;
				if(aly == 1){ other.cmap[a, b] = 2; }
			}
		}
		

	}
	
	with(objHero){
		other.cmap[floor(x / 64), floor(y / 64)] = 2;
	}
	
}