/// @description rest Game speed 

game_set_speed(60,gamespeed_fps);

lives= lives-1;

if(lives<0)

{
	health=0;
	ControlScript(Control_mode.RESTART,sstart);
}

if(lives>=0)
{
	health=30;
	instance_change(oPlayer,true);
	//bring the boss back to the platform
	//if(instance_exists(oBoss)){ with(oBoss) instance_destroy();}

	with (oPlayer)
	{
		x=128;
		y=380;
		instance_create_layer(oPlayer.x+30,oPlayer.y,"Weapon",oGun);
	}
	with (oCamera) follow = oPlayer; 
		//if(room == level3)
	//{
		//oGameEnd.x
		//instance_create_layer(oPlayer.x, oPlayer.y, "Monesters",oBoss );
	//}
	
	
}

