/// @description start menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin =200;

menuX = gui_width;
menuY = gui_height - gui_margin ; //menu bottom
menu_x_target = gui_width - gui_margin; 
menu_speed = 25; //lower is faster
menu_font = menuFont;
menu_item_height = font_get_size(menuFont);
menu_chosen = -1; 
menuControl = true; //control the movement in the menu


menuArray[0] = "Back";

menuItems =array_length(menuArray);

menu_top = menuY - ((menu_item_height * 2) * menuItems); //menu top
menuCursor =0;
