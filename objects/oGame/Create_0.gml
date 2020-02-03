/// @description Game - Global Particles.

//Defines game macros.
#macro CHARACTER_STUN 40
#macro ROOM_FLOOR 183

//Resets the spawn timer.
spawn_speed = 40;
spawn_wave = 1;
spawn_count = 5;
alarm_set(0,spawn_speed);

//Creates the particle system.
globalvar particle_system; particle_system = part_system_create();

//Creates the particles used in the game.
globalvar particle_explode; particle_explode = part_type_create();
part_type_sprite(particle_explode,spr_particle_explode,true,true,false);
part_type_life(particle_explode,10,15);

globalvar particle_star; particle_star = part_type_create();
part_type_shape(particle_star,pt_shape_star);
part_type_scale(particle_star,0.15,0.15);
part_type_color1(particle_star,c_white);
part_type_direction(particle_star,0,360,0,0);
part_type_speed(particle_star,2,3,0,0);
part_type_life(particle_star,5,15);