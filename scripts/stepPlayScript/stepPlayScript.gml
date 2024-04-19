function stepPlayScript(){
	if(skipStep || state != State.play){ return; }
	
	var m = instance_find(objUnit, irandom_range(0, instance_number(objUnit) - 1));
	if(m != noone && m.aly == -1 && instance_number(objHero) > 0){
		
		m.xTar = instance_find(objHero, 0).xSpot;
		m.yTar = instance_find(objHero, 0).ySpot;
		m.pulled = true;
	}
	
	
	
	if( instance_number(objHero) < 1 ){
		ww.state = State.endPlay;
		ww.endPlayTime = 90;
		ww.endPlayMessage = "The commander has fallen! Retreat!";
	}
	
	
	if( instance_number(objUnitFoe) < 1 && instance_number(objBuildingFoe) < 1){
		ww.state = State.endPlay;
		ww.endPlayTime = 90;
		ww.endPlayMessage = "VICTORY!";
	}
	
	
}