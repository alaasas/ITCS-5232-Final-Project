/// @description size variable and mode setup 
// reference for the control script: Shaun Spalding
// https://www.youtube.com/channel/UCn7FE3Tx391g1tWPv-1tv7Q

w = display_get_gui_width();
h = display_get_gui_height();

h_half = h/2;
enum Control_mode
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
	
}
mode = Control_mode.INTRO;
percent = 1;
target = room; //variable for holding which room goto.

