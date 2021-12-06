/// @description 
vsp = 0; // Vertical speed 
grv = 0.3; // accelerate 3 pixels downward
if instance_exists(oPlayer){

    direction = point_direction(x,y,oPlayer.x,oPlayer.y);
	speed=5;
}