/// @description Create the hit

att = instance_create_depth(x, y, depth, Reaper_Ability_Hit_Obj);
att.direction = image_angle+180; // So hit direction will be reversed
att.image_angle = image_angle;
att.image_xscale = image_xscale; // So hit direction will be reversed
att.image_yscale = image_yscale;
att.image_blend = image_blend;

instance_destroy();