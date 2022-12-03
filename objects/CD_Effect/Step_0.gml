image_alpha -= 0.1;

if(image_alpha <= 0){
	instance_destroy();
}

image_xscale += scaleInc;
image_yscale += scaleInc;