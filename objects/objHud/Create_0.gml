image_xscale = 4;
image_yscale = 4;
x = room_width - sprite_width;
depth = -9900;


for(var a=0; a<4; a++){
	for(var b=0; b<5; b++){
		
		buildKeys[a, b] = instance_create_depth(x + (a * 64), y + 448 + (b * 64), depth - 1, objBuildButton);
		buildKeys[a, b].a = a;
		buildKeys[a, b].b = b;
		
	}
}




buildKeys[0, 0].cursor = {
	img: imgSpanTent,
	obj: objSpanTent,
	w: 2, h: 2, cost: 500,
	spawnCost: 100,
	rang: 2,
};

buildKeys[1, 0].cursor = {
	img: imgSpanTentPike,
	obj: objSpanTentPike,
	w: 2, h: 2, cost: 800,
	spawnCost: 150,
	rang: 2,
};


buildKeys[0, 1].cursor = {
	img: imgSpanFarm,
	obj: objSpanFarm,
	w: 2, h: 2, cost: 400,
	spawnCost: 0,
	rang: 2,
};

buildKeys[0, 2].cursor = {
	img: imgWatchPoint,
	obj: objSpanGuard,
	w: 2, h: 2, cost: 100,
	spawnCost: 0,
	rang: 2,
};


