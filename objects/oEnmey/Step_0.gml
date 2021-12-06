

vsp = vsp + grv;//brings object down



//Horizontal collision - like detecting the collision when it is about to happen 
if (place_meeting(x+hsp , y , oWall))
{
	while (!place_meeting(x+sign(hsp) , y , oWall))
	{
		x = x+ sign(hsp);
	}
	
	hsp = -hsp; 
	
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
	sprite_index = sMonester;
	image_speed = 0; 
	if(vsp>0) image_index=1; else image_index=0;
	
}
else
{
	image_speed=0.2; 
	if(hsp==0)
	{
		sprite_index = sMonester;
	}
	else
	{
		sprite_index = sMonesterR;
	}	
	
}
//Flipping the image 
if(hsp!=0) image_xscale = sign(hsp) *size; image_yscale = other.size;

//Flashing the monster with red color if it hit by a bullets
if (flash>0)
{
	flash--;
	sprite_index = sEnemyH;
}