/// @description Projectile - Character Collision.

//Checks if colliding with character.
var inst_character = instance_place(x,y,oCharacter);
if (inst_character != noone) && (image_index == 0){
	with (inst_character){
		if (char_stun == 0){
			char_stun = CHARACTER_STUN;
			char_hp = approach(char_hp,-1,1);
		}
	}
	part_particles_create(particle_system,x,y,particle_explode,1);
	instance_destroy();
}