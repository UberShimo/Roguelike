if(bullets > 0){
	bullet = instance_create_depth(x, y, 0, Enemy_Bullet_Obj);
	scale = random_range(0.1, 0.15)*image_xscale; // Bullets scale with size
	bullet.image_xscale = scale;
	bullet.image_yscale = scale;
	bullet.direction = direction + random_range(-45, 45);
	bullet.speed = random_range(0.5, 1)/AS;
	bullet.DMG = DMG;
	
	bullets -= 1;

	alarm[3] = 12*AS;
}
else{
	shake = 0;
	action = noone;
	
	alarm[0] = 30*AS;
	alarm[2] = 30*AS;
}