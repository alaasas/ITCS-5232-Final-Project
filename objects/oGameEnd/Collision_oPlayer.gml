/// @description move to the next level

with(oPlayer)
{
	if (hasControl)
	{
		hasControl= false;
		instance_destroy(oPlayerController);
		room_goto(endwin)

	}
	
	
}

