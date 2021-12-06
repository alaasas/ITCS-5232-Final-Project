/// @description control

//item ease in 
menuX +=(menu_x_target - menuX)/menu_speed;

//keyborad control 
if(menuControl)
{
	if (keyboard_check_pressed(vk_up))
	{
		menuCursor++;
		if(menuCursor >= menuItems) menuCursor=0;
		
	}
	if (keyboard_check_pressed(vk_down))
	{
		menuCursor--;
		if(menuCursor <0) menuCursor=menuItems -1;
		
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+800;
		menu_chosen = menuCursor;
		menuControl=false;
	}
	var mouseY_gui = device_mouse_y_to_gui(0); ///mouse 0 bc my device connected to one mouse
	if (mouseY_gui < menuY) && (mouseY_gui > menu_top)
	{
		menuCursor = (menuY - mouseY_gui) div (menu_item_height * 1.5)
		if (mouse_check_button_pressed(mb_left))
		{
			menu_x_target = gui_width+800;
			menu_chosen = menuCursor;
			menu_control = false;
			
		}
		
		
	}
	
}
if(menuX > gui_width+150)&& (menu_chosen != -1)

{
	switch(menu_chosen)
	{
		case 3: ControlScript(Control_mode.NEXT); break;
		case 2: 
		{
			if(!file_exists(SAVEfile))
			{
				ControlScript(Control_mode.NEXT);
			}
			else
			{
				var myfile = file_text_open_read(SAVEfile);
				var target = file_text_read_real(myfile);
				file_text_close(myfile);
				ControlScript(Control_mode.GOTO, target);
			}
			
		}
		break;
		case 1: room_goto(instructions); break;
		case 0: game_end(); break;
	}
	
}
