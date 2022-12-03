image_alpha -= fade;

if(image_alpha <= 0){
	instance_destroy();
}

x += random_range(-movement, movement);
y += random_range(-movement, movement);