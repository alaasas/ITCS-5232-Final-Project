/// @description setup camera
// reference for the camera script: Shaun Spalding
// https://www.youtube.com/channel/UCn7FE3Tx391g1tWPv-1tv7Q

cam = view_camera[0]; //id of the cam 0
follow = oPlayer; // id of the player 
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart; //x cam center
yTo = ystart; //y cam  centre , where to place the player 

