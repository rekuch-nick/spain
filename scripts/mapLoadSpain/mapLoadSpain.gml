function mapLoadSpain(){
	
	bg.sprite_index = imgMap001;
	bg.image_xscale = 4;
	bg.image_yscale = 4;
	
	
	instance_create_depth(400, 400, ww.layerB, objStageButton);
	
	
	var l2 = instance_create_depth(500, 400, ww.layerB, objStageButton);
	l2.r = Time1Room02;
}