repeat(2){
	eff = instance_create_depth(other.x, other.y, depth, Spark_Pixel_Obj);
	eff.image_blend = c_red;
	s = random_range(1, 2);
	eff.image_xscale = s;
	eff.image_yscale = s;
	eff.speed *= 0.5;
}
