

x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_alpha -= fade;
timeCD --;
if(timeCD < 1){
	instance_destroy();
}