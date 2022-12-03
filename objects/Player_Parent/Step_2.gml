/// @description View fix

viewWidth = camera_get_view_width(view_camera[0]);
viewHeight = camera_get_view_height(view_camera[0]);

xPos = x + random_range(-cameraShake, +cameraShake) - viewWidth / 2;
yPos = y + random_range(-cameraShake, +cameraShake) - viewHeight / 2;

camera_set_view_pos(view_camera[0], xPos, yPos);