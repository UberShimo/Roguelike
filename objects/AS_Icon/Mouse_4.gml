repeat(6){
	instance_create_depth(x, y, depth-2, Spark_Pixel_Obj);
}

if(Class_Select_Controller.mechanicUnlock == 2){
	Class_Select_Controller.mechanicUnlock = 3;
}
else{
	Class_Select_Controller.mechanicUnlock = 0;
}