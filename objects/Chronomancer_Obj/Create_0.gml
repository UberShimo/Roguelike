event_inherited();

CD = 6*60;

characterSprite = Chronomancer_Spr;

orb1 = instance_create_depth(x, y, depth, Chronomancer_Orb_Obj);
orb2 = instance_create_depth(x, y, depth, Chronomancer_Orb_Obj);
orb2.rotation = 180;