if(instance_exists(poorBastard)){
	x = poorBastard.x + xDiff;
	y = poorBastard.y + yDiff;
}

image_alpha -= 0.001;

if(image_alpha <= 0){
	instance_destroy();
}

depth = -y;