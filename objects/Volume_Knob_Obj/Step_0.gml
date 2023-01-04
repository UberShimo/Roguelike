if(grabbed){
	if(mouse_x < Volume_Slider_Obj.x){
		x = Volume_Slider_Obj.x;
	}
	else if(mouse_x > Volume_Slider_Obj.x+64){
		x = Volume_Slider_Obj.x+64;
	}
	else{
		x = mouse_x;
	}
}