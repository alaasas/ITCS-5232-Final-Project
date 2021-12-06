/// @description Progress the controller

if (mode != Control_mode.OFF)
{
	if (mode == Control_mode.INTRO)
	{
		//percent = max(0,percent - 0.05);
		percent = max(0,percent - max((percent/10),0.005));
			
	}
	else
	{
		//percent = min(0,percent+0.05);
		percent = min(1.2,percent + max(((1.2- percent)/10),0.005));
		
		
	}	
	


if (percent == 1.2) || (percent == 0)
{
	switch(mode)
	{
		case Control_mode.INTRO:
		{
			mode = Control_mode.OFF;
			break;
		}
		
		case Control_mode.NEXT:
		{
			mode = Control_mode.INTRO;
			room_goto_next();
			break;
		}
		case Control_mode.GOTO:
		{
			mode = Control_mode.INTRO;
			room_goto(target);
			
			break;
		}
		case Control_mode.RESTART:
		{
			game_restart();
			break;
		}
		
		
		
	}
	
	
}

}