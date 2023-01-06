repeat(8){
	eff = instance_create_depth(x, y, depth, Spark_Pixel_Obj);
	s = random_range(1, 4);
	eff.image_xscale = s;
	eff.image_yscale = s;
}

instance_destroy();