/// @description Timer logic

if(global.seconds < 59){
	global.seconds += 1;
}
else{
	global.minutes += 1;
	global.seconds = 0;
}

alarm[9] = 60;