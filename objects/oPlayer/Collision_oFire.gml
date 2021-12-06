/// @description 

if(health < 0 )
{
	
with(oGun) instance_destroy();
instance_change(oPldead,true);
lives = lives -1; 
//dirction from the health player to dead player
direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction)-2;

if (sign(hsp) != 0) image_xscale = sign(hsp);
}
else
{
	health = health - 1; 
	sprite_index = shurt;
	
}

