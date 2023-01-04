pixelMultiplier = 2;

// Darkness
draw_sprite_ext(Darkness_Spr, 0, 0, 0, 1, 1, 0, c_white, 0.75);

// Draw HP bar
draw_sprite_ext(HP_Bar_Spr, 0, 12*pixelMultiplier, 1*pixelMultiplier, pixelMultiplier * (HP/100), pixelMultiplier, 0, c_white, 1);
draw_sprite_ext(HP_Frame_Spr, 0, 12*pixelMultiplier, 1*pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_white, 1);
c = c_white;
draw_text_transformed_color(12*pixelMultiplier, 0, floor(HP), 1, 1, 0, c, c, c, c, 0.5);

// Draw Coodlown bar ( dont quite understand the ((CD*CDchanger-alarm[1]) / CD / CDchanger) formula but.. IT WORKS!
draw_sprite_ext(CD_Bar_Spr, 0, 12*pixelMultiplier, 12*pixelMultiplier, pixelMultiplier * ((CD*CDchanger-alarm[1]) / CD / CDchanger), pixelMultiplier, 0, c_white, 1);
draw_sprite_ext(CD_Frame_Spr, 0, 12*pixelMultiplier, 12*pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_white, 1);

// Draw focus icon
if(maxFO > 1){
	draw_sprite_ext(FO_Upgrade_Spr, 0, 52*pixelMultiplier, 16*pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_black, 1);
	draw_sprite_ext(FO_Upgrade_Spr, 0, 52*pixelMultiplier, 16*pixelMultiplier, pixelMultiplier, (FO-1)/(maxFO-1) * pixelMultiplier, 0, c_white, 1);
}

// Draw monsters slain
xPos = camera_get_view_width(view_camera[0])-sprite_get_width(MonstersSlain_Preview_Spr)*pixelMultiplier;
draw_sprite_ext(MonstersSlain_Preview_Spr, 0, xPos, 0, pixelMultiplier, pixelMultiplier, 0, c_white, 0.5);
c = c_white;
draw_text_transformed_color(xPos+8, 2, global.monstersSlain, 2, 2, 0, c, c, c, c, 0.5);

// Draw timer
yPos = camera_get_view_height(view_camera[0])-24;
timer =  string(global.minutes) + ":" + string(global.seconds);
draw_text_transformed_color(8, yPos, timer, 1, 1, 0, c, c, c, c, 0.5);

// Draw minimap border
xPos = camera_get_view_width(view_camera[0])-sprite_get_width(Minimap_Spr)*pixelMultiplier;
yPos = camera_get_view_height(view_camera[0])-sprite_get_height(Minimap_Spr)*pixelMultiplier;
draw_sprite_ext(Minimap_Spr, 0, xPos, yPos, pixelMultiplier, pixelMultiplier, 0, c_white, 0.2);
// Draw depth
draw_sprite_ext(Depth_Preview_Spr, global.dungeonDepth-1, xPos, yPos, pixelMultiplier, pixelMultiplier, 0, c_white, 0.5);
// Draw player position on minimap
xPos = xPos + (x-Dungeon_Creater.startX) / Dungeon_Creater.xGrid * (Dungeon_Creater.hTiles+1.1); // Donnu why +1.1 makes good result
yPos = yPos + (y-Dungeon_Creater.startY) / Dungeon_Creater.yGrid * (Dungeon_Creater.vTiles-1.1); // Donnu why -1.1 makes good result
draw_sprite_ext(Pixel_Spr, 0, xPos, yPos, pixelMultiplier, pixelMultiplier, 0, c_white, 1);

// Draw returning
if(returning > 0){
	xPos = (camera_get_view_width(view_camera[0]) / 2) - 24;
	yPos = (camera_get_view_height(view_camera[0]) / 2) - 32;
	s = 0.5;
	c = c_white;
	draw_text_transformed_color(xPos, yPos, "RETURNING...", s, s, 0, c, c, c, c, returning);
}