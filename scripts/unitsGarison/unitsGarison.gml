function unitsGarison(b){
	
	
	
	if(b == noone){ return; }
	
	
	if(b.aly == aly && b.countGarison && b.active){
		
		var n = ds_list_size(b.garison);
		if(n < b.garisonMin){
			if(canBeGarison){
				garisonAt = b;
				ds_list_add(b.garison, id);
			}
		}
	}
	
	
	
}