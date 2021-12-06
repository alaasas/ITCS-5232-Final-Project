/// @desc ControlScript(mode, targetRoom)
/// @arg Mode sets transition mode btween nextmresart, and goto.
/// @arg Target sets target room when using the goto mode.
// reference for the control script: Shaun Spalding
// https://www.youtube.com/channel/UCn7FE3Tx391g1tWPv-1tv7Q

with (oController)
{
	mode= argument[0];
	if (argument_count >1) target = argument[1];
	
}
