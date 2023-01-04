if(global.classUnlocked){
	image_alpha = 1;
	global.classUnlocked = false;
}

if(image_alpha > 0){
	image_alpha -= 0.005;
}