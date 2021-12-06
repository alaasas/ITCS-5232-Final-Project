/// @description update camera

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	if((follow).object_index == oPldead)
	{
		x= xTo;
		y= yTo;
		
	}
}

//Update the object position
x += (xTo - x) /15;
y += (yTo - y) /15;

x = clamp(x,view_w_half, room_width - view_w_half)
y = clamp(y,view_h_half, room_height - view_h_half)
//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("mountians"))
{
		layer_x("mountians",x/2);
}

