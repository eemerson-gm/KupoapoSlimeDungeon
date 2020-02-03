
///@param gun id
///@param gun name
///@param gun bullet
///@param gun amount
///@param gun cooldown
///@param gun spread
///@param gun damage
///@param gun price

//Creates a new listing for the gun.
gun_list[argument0] = ds_map_create();
gun_upgrades[argument0] = 0;

//Adds the gun attributes to the list.
ds_map_add(gun_list[argument0],"Name",argument1);
ds_map_add(gun_list[argument0],"Bullet",argument2);
ds_map_add(gun_list[argument0],"Amount",argument3);
ds_map_add(gun_list[argument0],"Cooldown",argument4);
ds_map_add(gun_list[argument0],"Spead",argument5);
ds_map_add(gun_list[argument0],"Damage",argument6);
ds_map_add(gun_list[argument0],"Price",argument7);