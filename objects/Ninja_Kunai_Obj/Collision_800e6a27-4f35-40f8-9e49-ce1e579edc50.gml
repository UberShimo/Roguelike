/// @description Teleport player

Player_Parent.x = other.x;
Player_Parent.y = other.y;

repeat(8){
	instance_create_depth(x, y, depth, Spark_Pixel_Obj);
}

instance_destroy(other);
instance_destroy();