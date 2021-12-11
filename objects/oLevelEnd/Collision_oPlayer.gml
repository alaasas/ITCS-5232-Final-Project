/// @description move to the next level

with(oPlayer)
{
	if (hasControl)
	{
		hasControl= false;
		//ControlScript(Control_mode.NEXT);
		room_goto_next();

	}
	
	
}
