/// @description

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin =600;

menuX = gui_width + 800;
menuY = gui_height - gui_margin +100; //menu bottom
menu_x_target = gui_width - gui_margin -200; 
menu_speed = 25; //lower is faster
menu_font = menuFont;
menu_item_height = font_get_size(menuFont);
menu_chosen = -1; 
menuControl = true; //control the movement in the menu

menuArray[0] = "R E P L A Y";


menuItems =array_length(menuArray);

menu_top = menuY - ((menu_item_height * 1.5) * menuItems); //menu top
menuCursor =0;
