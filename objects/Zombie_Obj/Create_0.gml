image_speed = 0;

// Stats
HP = 50; // Health Points
// Dont ever forget
maxHP = HP;
DMG = 10; // Attack Damage
AS = 1; // Attack speed
MS = 1; // Movement Speed
originalMS = MS; // So MS can reset

rotation = 0; // Used to twist the character
stunned = false;
transparency = 1;
decayAmount = 0.2;
originalDecayAmount = decayAmount;

alarm[0] = 30;
alarm[1] = 2;

// Get outa wall/zombie
dir = Player_Parent.direction;

// Safety size
image_xscale = 1.5;
image_yscale = 1.5;
while(place_meeting(x, y, Collision_Obj) || place_meeting(x, y, Zombie_Obj)){
	x += lengthdir_x(8, dir);
	y += lengthdir_y(8, dir);
}
image_xscale = 1;
image_yscale = 1;

// Spawn effect
repeat(12){
	eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
	eff.image_blend = c_green;
	eff.fade = 0.05;
	eff.x += random_range(-2, 2);
	eff.y += random_range(-2, 2);
	eff.image_xscale += random_range(1, 4);
	eff.image_yscale += random_range(1, 4);
	eff.direction = random_range(0, 360);
	eff.speed = random_range(1, 4);
	eff.friction = 0.1;
}

audio_play_sound(Zombie_Snd, 0, false);