/// @description Insert description here
// You can write your code in this editor
image_speed=0.09;

if(instance_exists(oPlayer))
{
	if(distance_to_object(oPlayer) <  100)
	{
		flag=true;
		hsp=0.8;

		move_towards_point(oPlayer.x,oPlayer.y,2);
		image_xscale = image_xscale * sign(oPlayer.image_xscale)
		if(stone_total <= 0){
		instance_create_layer(oMonsterFly.x,oMonsterFly.y,"Bullets",oStone)
		
		stone_total=20;
		}
		else
		{
			stone_total=stone_total-1;
		}
		

	}
	else 
	{
		x = x + hsp;
	}
	}
else
	{
		if(flag == true)
		{
			hsp = 0;
			speed = 0;
				
	    }
	}
	
	


/*
if(instance_exists(oPlayer))
{
	if(distance_to_object(oPlayer) <  30)
	{
		flag=true;
		path_end();
		move_towards_point(oPlayer.x,oPlayer.y,2);
		//direction=point_direction(x,y,oPlayer.x,oPlayer.y);
		//speed=hspeed;
		//instance_create_layer()
	}
	else
	{
		if(flag == true)
		{
		  hsp = 0;
		  speed=0;
	    }
	}
}

if(distance_to_object(oMarker) <  10)
{
	//hsp= hsp * -1;
	image_xscale=image_xscale*-1;
}
*/