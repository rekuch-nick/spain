if(ww.state != State.play){ return; }



if(hp < 1){
	if(aly == 1){ ww.pop --; }
	
	if(garisonAt != noone){
		ds_list_delete(garisonAt.garison, ds_list_find_index(garisonAt.garison, id));
	}
	
	instance_destroy();
	return;
}

if(x == xSpot * 64 + 32 && y == ySpot * 64 + 32){
	
	
	
	
	actCD --;
	if(actCD < 1){
		actCD = 10;
		
		var tar = noone;
		//melee unit
		with(objUnit){ if(aly != other.aly){
			var d = abs(other.xSpot - xSpot) + abs(other.ySpot - ySpot);
			tar = noone;
			if(d == 1 || (d == 2 && xSpot != other.xSpot && ySpot != other.ySpot ) ){
				//in melee range of foe
				tar = id; break;
			}
		}}
		//melee building
		if(tar == noone){
			var buildingOn = collision_point(x, y, objBuilding, true, true);
			if(buildingOn != noone){
				if(buildingOn.aly != aly && buildingOn.attackable){
					tar = buildingOn;
				}
			}
			if(garisonAt == noone){ unitsGarison(buildingOn); }
		}
		
		
		//melee wall
		if(tar == noone){
			with(objWall){ if(aly != other.aly){
				var d = abs(other.xSpot - xSpot) + abs(other.ySpot - ySpot);
				tar = noone;
				if(d == 1 || (d == 2 && xSpot != other.xSpot && ySpot != other.ySpot ) ){
					//in melee range of wall
					tar = id; break;
				}
			}}
		}
		
		
		
		if(tar != noone){
			tar.hp -= 2;
			actCD = actCDMax;
			if(object_get_parent(tar.object_index) == objBuilding){			//tar.object_index == objBuilding)
				unitBumpTowards(tar.x + tar.sprite_width/2, tar.y+tar.sprite_height/2);
			} else {
				unitBumpTowards(tar.x, tar.y);
			}
			return;
		}
		
		
		
		if(!willMove){ return; }
		
		//move
		var a = xSpot + choose(-1, 0, 1);
		var b = ySpot + choose(-1, 0, 1);
		if(inBounds(a, b)){
			if(ww.bmap[a, b] == noone){
				if(xLast != a || yLast != b || percent(backUpChance)){
					
					if(aly == -1 && pulled){
						if(percent(80)){
							if(a < xSpot && xTar > xSpot){ return; }
							if(a > xSpot && xTar < xSpot){ return; }
							if(b < ySpot && yTar > ySpot){ return; }
							if(b > ySpot && yTar < ySpot){ return; }
						}
					}
					
					if(aly == 1 && ww.rallyPoint != noone){
						if(percent(80)){
							if(a < xSpot && ww.rallyPoint.a > xSpot){ return; }
							if(a > xSpot && ww.rallyPoint.a < xSpot){ return; }
							if(b < ySpot && ww.rallyPoint.b > ySpot){ return; }
							if(b > ySpot && ww.rallyPoint.b < ySpot){ return; }
						}
					}
					
					if(garisonAt != noone){
						if(a < garisonAt.x1 || b < garisonAt.y1){ return; }
						if(a >= garisonAt.x1 + garisonAt.wGarison || b >= garisonAt.y1 + garisonAt.hGarison){ return; }
					}
					
					if(xLast < xSpot && image_xscale < 0){ image_xscale *= -1; }
					if(xLast > xSpot && image_xscale > 0){ image_xscale *= -1; }
					
					xLast = xSpot; yLast = ySpot;
					xSpot = a; ySpot = b;
					actCD = actCDMax;
					
				}
			}
		}
		
		
		
	}
	
	
} else {
	
	var i = 0;
	while(i < 4 && x < xSpot * 64 + 32){ x ++; i ++; }
	while(i < 4 && x > xSpot * 64 + 32){ x --; i ++; }
	
	i = 0;
	while(i < 4 && y < ySpot * 64 + 32){ y ++; i ++; }
	while(i < 4 && y > ySpot * 64 + 32){ y --; i ++; }
	
	
	
}




