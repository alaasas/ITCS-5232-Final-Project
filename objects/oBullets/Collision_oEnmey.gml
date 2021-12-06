//other so, for a specifc enmy not every enemy object.

with(other)
{
	hp = hp - 1;
	flash =3
	//like other.other => refre ti the bulets back
	hitfrom = other.direction;

}
audio_play_sound(snd_attack,1,false);
score+=5;

instance_destroy();