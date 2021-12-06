/// @description player's steps

if(hasControl)
{
	
// Get player input (true / false)
key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) //whether or not the key is pressed 
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space); //whether or not the key is pressed in this cirrent frame



//Player's Movements

}

else
{
	key_right =0; 
	key_left =0; 
	key_jump=0;
	
}
var _move = key_right - key_left; // this store where we gonna move in this particular step 
// _move = -1 left / 1 right ==/ 0 - 1 = -1  , ==> 1 - 0 = 1

hsp = _move * walksp;

vsp = vsp + grv;//brings the player down

if( place_meeting(x, y+1 , oWall)) && (key_jump)
{
	vsp = -jumpsp;
	
}

//Horizontal collision - like detecting the collision when it is about to happen 
if (place_meeting(x+hsp , y , oWall))
{
	while (!place_meeting(x+sign(hsp) , y , oWall))
	{
		x = x+ sign(hsp);
	}
	
	hsp = 0;//-hsp; //flip the dircetion
	
}
x = x + hsp;

//vertical collision - like detecting the collision when it is about to happen 
if (place_meeting(x,y+vsp  , oWall))
{
	while (!place_meeting(x,y+sign(vsp)  , oWall))
	{
		y = y+ sign(vsp);
	}
	
	vsp = 0; 
	
}

y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerJ;
	image_speed = 0; 
	if(vsp>0) image_index=1; else image_index=0;
	
}
else
{
	image_speed=0.8; 
	if(hsp==0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}	
	
}
//Flipping the image 
if(hsp!=0)
{
	image_xscale = sign(hsp);

}

if(instance_exists(oFire))
{
	if(distance_to_object(oFire) <10 ) 
	{
		if(health < 0 )
		{
	
		with(oGun) instance_destroy();
		instance_change(oPldead,true);
		//dirction from the health player to dead player
		direction = point_direction(other.x,other.y,x,y);
		hsp = lengthdir_x(6,direction);
		vsp = lengthdir_y(4,direction)-2;

		if (sign(hsp) != 0) image_xscale = sign(hsp);
		}
		else
		{
			health = health - 0.5; 
			sprite_index = shurt;
	
		}

	}
}