image_xscale = 4; image_yscale = 4;

aly = 0;
x1 = floor(x / 64);
y1 = floor(y / 64);
x2 = x1 + floor(sprite_width / 64);
y2 = y1 + floor(sprite_height / 64);



hp = 100;
hpMax = 100;
actCD = 30;
actCDMax = 300;
actChance = 100;

spawn = noone;
spawnCost = 0;

active = true;
pop = 0;
canInactive = true;
attackable = true;

countGarison = false;
garison = ds_list_create();
garisonMin = 4;
wGarison = 2;
hGarison = 2;