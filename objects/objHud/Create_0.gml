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
	w: 2, h: 2, cost: 100,
	rang: 2,
};


