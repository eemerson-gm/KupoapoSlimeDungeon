/// @description Monster - Destroy.

//Decrements monster stun.
monster_stun = approach(monster_stun,0,1);

//Destroys the monster upon death.
var inst_character = instance_place(x,y,oCharacter);
if (monster_hp == 0) || (y > room_height + 32) || (inst_character != noone){
	
	if (oGame.spawn_wave%10 != 0){
		for(var wave = 0; wave < 1+floor(oGame.spawn_wave/10); wave++){
			if chance(45){
				with instance_create_depth(x,y,0,oCoin){
					x_speed = random_range(-3,3);
					drop_speed = random_range(-1,-4);
				}
			}
		}
	}
	
	if (inst_character != noone){
		with(inst_character){
			if (char_stun == 0){
				char_stun = CHARACTER_STUN;
				char_hp = approach(char_hp,-1,1);
				part_particles_create(particle_system,x,y,particle_star,3);
			}
		}
	}
	
	if (oGame.spawn_wave%10 != 0){
		part_particles_create(particle_system,x,y,particle_explode,1);
		instance_destroy();
	}else if (monster_hp == 0){
		for(var wave = 0; wave < 50+(50*floor(oGame.spawn_wave/10)); wave++){
			if chance(45){
				with instance_create_depth(x,y,0,oCoin){
					x_speed = random_range(-3,3);
					drop_speed = random_range(-1,-4);
				}
			}
		}
		part_particles_create(particle_system,x,y,particle_explode,1);
		instance_destroy();
	}
	
}