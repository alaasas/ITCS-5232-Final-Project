/// @description Spawn monster fly if it doesn't exist

//check if the player exist
if (instance_exists(oPlayer))
{

	//check if the MonsterFly dosn't exist
	if (instance_exists(oMonsterFly) == false)
	{
		//create a new MonsterFly
		instance_create_layer(oSpawnerMonsterFly.x,oSpawnerMonsterFly.y,"Monesters",oMonsterFly)
		instance_create_layer(3760,699,"Monesters",oMonsterFly)
		
			
	}

}