/// @description Insert description here
// You can write your code in this editor
x= oPlayer.x;
y= oPlayer.y+20;
	
image_angle= point_direction(x,y, mouse_x, mouse_y)
	
firingdelay = firingdelay -1;
kickback = max(0, kickback-1); //don't go below zero
if(mouse_check_button(mb_left) && (firingdelay<0))
{
	kickback=4;
	firingdelay =5;
	with(instance_create_layer(x,y, "Bullets",oBullets))
	{
		speed = 25;
		direction = other.image_angle + irandom_range(-3 , 3)
		image_angle = direction
	}
}

x = x  - lengthdir_x(kickback, image_angle)
y = y  - lengthdir_y(kickback, image_angle)

if( (image_angle > 90) && (image_angle < 270 ) )
{
	image_yscale = -1 
}
else 
{
	image_yscale = 1
}