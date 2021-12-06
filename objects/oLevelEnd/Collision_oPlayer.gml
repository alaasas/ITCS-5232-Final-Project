/// @description move to the next level

with(oPlayer)
{
	if (hasControl)
	{
		hasControl= false;
		ControlScript(Control_mode.NEXT);
		//ControlScript(Control_mode.GOTO,);

	}
	
	
}
