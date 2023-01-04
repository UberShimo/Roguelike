/// @description Spawn trail

// Get player position on minimap
xPos = camera_get_view_width(view_camera[0])-sprite_get_width(Minimap_Spr)*pixelMultiplier;
yPos = camera_get_view_height(view_camera[0])-sprite_get_height(Minimap_Spr)*pixelMultiplier;
xPos = xPos + (x-Dungeon_Creater.startX) / Dungeon_Creater.xGrid * (Dungeon_Creater.hTiles+1.1); // Donnu why +1.1 makes good result
yPos = yPos + (y-Dungeon_Creater.startY) / Dungeon_Creater.yGrid * (Dungeon_Creater.vTiles-1.1); // Donnu why -1.1 makes good result

trail = instance_create_depth(0, 0, 0, Minimap_Trail);
trail.xPos = xPos;
trail.yPos = yPos;

alarm[7] = 60;