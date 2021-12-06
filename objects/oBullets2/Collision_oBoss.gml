/// @description 
with(other)
{
	hp=hp-2;
	//like other.other => refre ti the bulets back
	hitfrom = other.direction;

}
score+=30;
audio_play_sound(snd_attack,1,false);
instance_destroy();

if(other.hp<0)
{
	instance_destroy(other);
}

