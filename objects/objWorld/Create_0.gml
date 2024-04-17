room_speed = 30;
room_speed = 120;
depth = -9990;

layerB = -1000;
layerM = -3000;

state = State.play;

xCur = 0; yCur = 0;
zoom_level = 1;

draw_set_font(fntPlain);
firstFrame = true;
rallyPoint = noone;

/*
room_goto(Time1Room01);
firstFrame = true;
for(var a=0; a<room_width/64; a++){ for(var b=0; b<room_height/64; b++){
	bmap[a, b] = noone;
}}
rallyPoint = noone;
*/

instance_create_depth(0, 0, -9999, objScreenTitle);


mapLoadSpain();



skipStep = false;
coins = 100;
cursor = noone;
buildBlocker = noone;
buildInRange = false;