/// @description Get outa wall logic

if(position_meeting(x, y, other)){
	w = sprite_get_width(sprite_index);
	h = sprite_get_height(sprite_index);
	if(!position_meeting(x+w, y, other)){
		x += w;
	}
	if(!position_meeting(x-w, y, other)){
		x -= w;
	}
	if(!position_meeting(x, y+h, other)){
		y += h;
	}
	if(!position_meeting(x, y-h, other)){
		y -= h;
	}
}