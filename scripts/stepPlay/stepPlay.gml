function stepPlay(){
	
	if(firstFrame){
		with(objBlock){ ww.bmap[x1, y1] = id; }
		with(objWall){ ww.bmap[x1, y1] = id; }
		firstFrame = false;
	}
	
	
	
	if(skipStep || state != State.play){ return; }
	
	xCur = floor(mouse_x / 64);
	yCur = floor(mouse_y / 64);
	
	
	if(mouse_check_button_pressed(mb_right)){
		cursor = noone;
		skipStep = true;
		return;
	}
	
	
	if(cursor == noone){
		
		if(mouse_check_button_pressed(mb_left)){
			if(rallyPoint == noone || rallyPoint.a != xCur || rallyPoint.b != yCur){
				rallyPoint = { a: xCur, b: yCur };
			} else {
				rallyPoint = noone;
			}
		}
		
		if(keyboard_check_pressed(ord("Q")) && coins > 100){
			cursor = {
				img: imgSpanTent,
				obj: objSpanTent,
				w: 2, h: 2, cost: 100,
				rang: 2,
			};
			buildCollisionMap();
		}
		
		
		
		
		
	} else {
		buildBlocker = false;
		for(var a=xCur; a<xCur + cursor.w; a++){ for(var b=yCur; b<yCur + cursor.h; b++){
			if(!inBounds(a, b)){ buildBlocker = true; break; }
			if(cmap[a, b] != 0){ buildBlocker = true; }
		}}
		
		buildInRange = false;
		for(var a=xCur - cursor.rang; a<xCur + cursor.w + cursor.rang; a++){ 
			for(var b=yCur - cursor.rang; b<yCur + cursor.h + cursor.rang; b++){
				if(!inBounds(a, b)){ continue; }
				if(cmap[a, b] == 2){ buildInRange = true; break; }
			}
		}
		
		
		
		if(mouse_check_button_pressed(mb_left)){
			if(!buildBlocker && buildInRange){
				var s = instance_create_depth(xCur * 64, yCur * 64, layerB, cursor.obj);
				
				//cursor = noone;
				buildCollisionMap();
			}
			
		}
		
		
	}
	
		
	
	

}