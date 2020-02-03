/// @description Game - Create Monsters.

//Checks if the wave is special.
var is_boss_wave = (spawn_wave%10 == 0);
var wave_10 = floor(spawn_wave/10);

//Checks if the boss should spawn.
if (is_boss_wave == false){
	
	//Checks to create one of the two monster types.
	var monster_chance = (irandom_range(0,100) >= 75);
	var monster_type = asset_get_index("oMonster_0_"+string(monster_chance));
	
	//Creates monster instance.
	with instance_create_depth(room_width/2,-16,0,monster_type){
		monster_hp = 1 + monster_chance + wave_10;
		monster_speed = 0.6;
	}
	
}else{
	
	//Spawns the boss monster.
	var monster_type = asset_get_index("oMonster_0_2");
	with instance_create_depth(room_width/2,-16,0,monster_type){
		monster_hp = 40 + wave_10*40;
	}
	
}
spawn_count--;