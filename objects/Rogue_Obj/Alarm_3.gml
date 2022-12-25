/// @description ACTION!
if(action == "chargeAttack"){
	att = instance_create_depth(x, y, 0, Rogue_Charge_Attack_Obj);
	att.DMG += att.DMG*FO;
	rotation = 1;
}
else if(action == "attack"){
	att = instance_create_depth(x, y, 0, Rogue_Attack_Obj);
	att.DMG += att.DMG*FO;
	rotation = 2;
}

charge = 0;
FO = 1; // Never forget