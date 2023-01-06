if(action == "attack"){
	repeat(12){
		bullet = instance_create_depth(x, y, 0, Enemy_Twisting_Bullet_Obj);
		scale = random_range(0.1, 0.15)*image_xscale; // Bullets scale with size
		bullet.image_xscale = scale;
		bullet.image_yscale = scale;
		bullet.direction = random_range(0, 360);
		bullet.speed = random_range(0.5, 1)/AS;
		bullet.twist = random_range(-3, 3);
		bullet.twist /= AS;
		bullet.DMG = DMG;
	}
	sprite_index = Monster5_Walk_Spr;
	
	action = "recover";
	shake = 0;
	alarm[0] = 120*AS;
	alarm[2] = 120*AS;
}