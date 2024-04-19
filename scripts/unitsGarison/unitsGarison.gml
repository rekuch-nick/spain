function unitsGarison(b){
	
	
	
	if(b == noone){ return; }
	
	
	if(b.aly == aly && b.countGarison && b.active){
		if(b.object_index == objSpanGuardRanged && !rangedAttack){ return; }
		
		try {
			var n = ds_list_size(b.garison);
		} catch(_e){
			return;
		}
		
		
		if(n < b.garisonMin){
			if(canBeGarison){
				garisonAt = b;
				ds_list_add(b.garison, id);
			}
		}
	}
	
	
	
}