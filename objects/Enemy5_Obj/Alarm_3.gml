if(bullets > 0){
	bullet = instance_create_depth(x, y, 0, Enemy_Twisting_Bullet_Obj);
	scale = random_range(0.1, 0.15)*image_xscale; // Bullets scale with size
	bullet.image_xscale = scale;
	bullet.image_yscale = scale;
	bullet.direction = random_range(0, 360);
	bullet.speed = random_range(0.5, 1)/AS;
	bullet.twist = random_range(-4, 4);
	bullet.twist /= AS;
	bullet.DMG = DMG;
	
	bullets -= 1;

	alarm[3] = 12*AS;
}
else{
	action = noone;
	
	sprite_index = Monster5_Walk_Spr;
	
	alarm[0] = 30*AS;
	alarm[2] = 30*AS;
}