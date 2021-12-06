/// @description Insert description here
// You can write your code in this editor
if instance_exists(oPlayer){
if( distance_to_object(oPlayer > 80))
{
	vspeed=vspeed+grv;
}
else
{
	move_towards_point(oPlayer.x, oPlayer.y,3);
}
}
else
{
	instance_destroy();
}