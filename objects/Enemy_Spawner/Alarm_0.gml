rng = irandom_range(1, 5);

if(rng == 1){
	repeat(3){
		obj = instance_create_depth(x, y, depth, Blob_Obj);
		if(isBig){
			obj.isBig = true;
			obj.image_xscale = 1.5;
			obj.image_yscale = 1.5;
		}
	}
}
else if(rng == 2){
	obj = instance_create_depth(x, y, depth, Enemy2_Obj);
}
else if(rng == 3){
	obj = instance_create_depth(x, y, depth, Enemy3_Obj);
}
else if(rng == 4){
	obj = instance_create_depth(x, y, depth, Enemy4_Obj);
}
else{
	obj = instance_create_depth(x, y, depth, Enemy5_Obj);
}

if(isBig && rng != 1){
	obj.HP += obj.HP;
	obj.maxHP += obj.maxHP;
	obj.DMG += obj.DMG/2;
	obj.image_xscale = 1.5;
	obj.image_yscale = 1.5;
}

// Effect!
repeat(6){
	eff = instance_create_depth(x, y, 0, Blood_Obj);
	eff.image_xscale = 4;
	eff.image_yscale = 4;
	eff.image_blend = c_maroon;
}

instance_destroy();