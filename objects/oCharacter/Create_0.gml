/// @description Character - Variables.

//Defines swipe control variables.
scr_touch_update();

//Defines character variables.
char_hp = 3;
char_posx = xstart;
char_jump = 0;
char_stun = 0;

//Defines room side enumerators.
side_left = xstart;
side_right = room_width - xstart;

//Gets gun information.
gun_name = ds_map_find_value(gun_list[gun_select],"Name");
gun_bullet = ds_map_find_value(gun_list[gun_select],"Bullet");
gun_amount = ds_map_find_value(gun_list[gun_select],"Amount") + (gun_upgrades[gun_select]-1);
gun_cooldown = ds_map_find_value(gun_list[gun_select],"Cooldown") - (gun_upgrades[gun_select]-1)*3;
gun_cooldown = max(gun_cooldown,0);
gun_spread = ds_map_find_value(gun_list[gun_select],"Spead") - (gun_upgrades[gun_select]-1)*3;
gun_spread = max(gun_spread,0);
gun_damage = ds_map_find_value(gun_list[gun_select],"Damage") + (gun_upgrades[gun_select]-1);
gun_damage = min(gun_damage,6);