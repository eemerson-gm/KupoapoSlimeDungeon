/// @description Bullet - Collision Detection.

//Damages colliding monsters.
var inst_monster = collision_line(xprevious,yprevious,x,y,oMonster,false,false);
with (inst_monster){ monster_hp = approach(monster_hp,0,oCharacter.gun_damage); monster_stun = 5; part_particles_create(particle_system,x,y,particle_star,3); }
if (inst_monster != noone){ instance_destroy(); }

//Destroy colliding projectiles.
var inst_projectile = collision_line(xprevious,yprevious,x,y,oProjectile,false,false);
with (inst_projectile){ part_particles_create(particle_system,x,y,particle_explode,1); part_particles_create(particle_system,x,y,particle_star,3); instance_destroy(); }
if (inst_projectile != noone){ instance_destroy(); }