/// @description Monster - Projectiles.
if (y < ROOM_FLOOR){
	instance_create_depth(x,y+16,0,oProjectile_slime);
}
alarm_set(0,90);