/// @description Insert description here
// You can write your code in this editor
if(room == Level3) {
	if(audio_is_playing(snd_background))
	{
		audio_stop_sound(snd_background)
	}
	audio_play_sound(snd_backgroundlevel3,3,true);
}
else
{
	audio_stop_all();
	audio_play_sound(snd_background,2,true);
}