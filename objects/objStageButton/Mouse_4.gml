


for(var a=0; a<room_width/64; a++){ for(var b=0; b<room_height/64; b++){
	ww.bmap[a, b] = noone;
}}
ww.rallyPoint = noone;
ww.firstFrame = true;
ww.state = State.play;

room_goto(r);