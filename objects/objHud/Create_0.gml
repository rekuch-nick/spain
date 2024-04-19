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
buildKeys[0, 0].icon = imgSpanSword;

buildKeys[1, 0].cursor = {
	img: imgSpanTentPike,
	obj: objSpanTentPike,
	icon: imgSpanPike,
	w: 2, h: 2, cost: 800,
	spawnCost: 150,
	rang: 2,
};
buildKeys[1, 0].icon = imgSpanPike;

buildKeys[2, 0].cursor = {
	img: imgSpanTentGun,
	obj: objSpanTentGun,
	w: 2, h: 2, cost: 2000,
	spawnCost: 1000,
	rang: 2,
};
buildKeys[2, 0].icon = imgSpanGun;

buildKeys[0, 1].cursor = {
	img: imgSpanFarm,
	obj: objSpanFarm,
	w: 2, h: 2, cost: 400,
	spawnCost: 0,
	rang: 2,
};
buildKeys[0, 1].icon = imgSpanFarmer;

buildKeys[0, 2].cursor = {
	img: imgWatchPoint,
	obj: objSpanGuard,
	w: 2, h: 2, cost: 50,
	spawnCost: 0,
	rang: 2,
};
buildKeys[0, 2].icon = imgWatchIcon;

buildKeys[1, 2].cursor = {
	img: imgWatchPointRanged,
	obj: objSpanGuardRanged,
	w: 2, h: 2, cost: 50,
	spawnCost: 0,
	rang: 2,
};
buildKeys[1, 2].icon = imgWatchIconRanged;

