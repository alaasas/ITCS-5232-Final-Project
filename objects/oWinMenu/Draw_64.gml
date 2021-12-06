/// @description draw the menu
// This event doesn't darw based on the camera


draw_set_font(menuFont);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

for( var i = 0; i<menuItems; i++)

{
	var offset = 2; 
	var txt = menuArray[i];
	if(menuCursor == i)
	{
		//txt = string_insert( txt, 0);
		var colorItem = c_blue;
		
	}
	else
	{
		var colorItem = c_white;
	}
	var xx = menuX;
	var yy = menuY - (menu_item_height * (i * 1.5));
	draw_set_color(c_black)
	draw_text(xx - offset,yy,txt);
	draw_text(xx + offset,yy,txt);
	draw_text(xx + offset,yy,txt);
	draw_text(xx - offset,yy,txt);
	draw_set_color(colorItem)
	draw_text(xx,yy,txt);
	
	
	
	
}

//using mouse_x , mouse_y => represent location of mouse on the game not on the gui, when we want to point to any of the menu items
// we need location of mouse on gui not on the game screen bc what drwan on gui is independent on where the camera is. 