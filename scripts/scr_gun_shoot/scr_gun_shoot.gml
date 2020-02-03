
///@param gun bullet
///@param gun amount
///@param gun cooldown
///@param gun spead
///@param gun direction
///@param gun positionx
///@param gun positiony

//Gets variables needed to create a bullet.
var gun_bullet = argument0;
var gun_amount = argument1;
var gun_cooldown = argument2;
var gun_spread = argument3;
var gun_direction = argument4;
var gun_positionx = argument5;
var gun_positiony = argument6;
var gun_bullet_speed = 5;

//Checks if gun cooldown is over.
if (alarm_get(1) == -1){
	
	for (var bullet = 0; bullet < gun_amount; bullet++){
		
		//Creates new bullet at the position.
		var temp_gun_direction = gun_direction+irandom_range(-gun_spread,gun_spread);
		with instance_create_depth(gun_positionx,gun_positiony,0,gun_bullet){ image_angle = temp_gun_direction; motion_set(temp_gun_direction,gun_bullet_speed); }
	
		//Resets the cooldown timer.
		alarm_set(1,gun_cooldown);
	}
	
}