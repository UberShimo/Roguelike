/// @description Spawn trail

// Draw minimap border
mapWidth = sprite_get_width(Minimap_Spr);
mapHeight = sprite_get_height(Minimap_Spr);
xPos = camera_get_view_width(view_camera[0])-mapWidth*pixelMultiplier;
yPos = camera_get_view_height(view_camera[0])-mapHeight*pixelMultiplier;
xPos = xPos + (x-Dungeon_Creater.startX) / (Dungeon_Creater.xGrid * (Dungeon_Creater.hTiles)) * (mapWidth-3.5) * pixelMultiplier; // Donnu why -3.5 makes good result
yPos = yPos + (y-Dungeon_Creater.startY) / (Dungeon_Creater.yGrid * (Dungeon_Creater.vTiles)) * (mapHeight-3.5) * pixelMultiplier;


trail = instance_create_depth(0, 0, 0, Minimap_Trail);
trail.xPos = xPos+0.5;
trail.yPos = yPos+0.5;

alarm[7] = 60;