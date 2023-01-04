image_speed = 0;

// Stats
HP = 100; // Health Points
maxHP = HP;
DMG = 6; // Attack Damage
AS = 1; // Attack speed
MS = 1; // Movement Speed
originalMS = MS; // So MS can reset

rotation = 0; // Used to twist the character
stunned = false;
transparency = 1;
decayAmount = 0.1;
originalDecayAmount = decayAmount;

// Dont ever forget
maxHP = HP;

alarm[0] = 30;
alarm[1] = 2;

// Get outa wall
dir = point_direction(x, y, Player_Parent.x, Player_Parent.y);

while(place_meeting(x, y, Collision_Obj)){
	x += lengthdir_x(4, dir);
	y += lengthdir_y(4, dir);
}

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

audio_play_sound(Mystic_Snd, 0, false);