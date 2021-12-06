/// @description 
with(other)
{
	hp=hp-5;
	//like other.other => refre ti the bulets back
	hitfrom = other.direction;

}
score+=20;
instance_destroy();

if(other.hp<0)
{
	instance_destroy(other);
}
