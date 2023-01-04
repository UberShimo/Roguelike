if(grabbed){
	grabbed = false;
	
	if(distance_to_point(Paper_Obj.x, Paper_Obj.y) < 32){
		Class_Select_Controller.alarm[2] = 1;
		instance_destroy();
	}
}