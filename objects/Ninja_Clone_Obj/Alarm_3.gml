/// @description ACTION!

att = instance_create_depth(x, y, 0, Clone_Kunai_Obj);
att.DMG += att.DMG*Player_Parent.FO;
att.direction = direction;
att.image_angle = direction;
att.velocity = 16;
att.image_xscale = 16;

rotation = 0;