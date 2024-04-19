function stepEndPlay(){
	if(ww.state != State.endPlay){ return; }
	
	ww.endPlayTime --;
	
	if(ww.endPlayTime < 1){
		ww.state = State.map;
		ww.skipStep = true;
		mapLoadSpain();
	}
	
	
}