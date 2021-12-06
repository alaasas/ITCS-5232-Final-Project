/// @description Insert description here
// You can write your code in this editor

if(stone_total==0){
	instance_create_layer(oMonsterFly.x,oMonsterFly.y,"Bullets",oStone);
	stone_total++;
}
else
{
	alarm[3]=10;
}
