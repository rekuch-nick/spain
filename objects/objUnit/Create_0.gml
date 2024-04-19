image_xscale = 4; image_yscale = 4;
aly = 0;
willMove = true;

actCD = 30;
actCDMax = 30;

hp = 10;
hpMax = 10;


xSpot = floor(x / 64);
ySpot = floor(y / 64);

xTar = xSpot;
yTar = ySpot;

xLast = xSpot;
yLast = ySpot;

backUpChance = 20;

inMelee = false;
inRange = false;

aggroRange = 1;


rangedAttack = false;
gunRange = 6;
gunLoadTime = 60 * 5;
gunPower = 100;
gunHitChance = 100;


bornAt = noone;
pulled = false;
garisonAt = noone;
canBeGarison = true;