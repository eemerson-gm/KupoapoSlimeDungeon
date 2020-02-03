/// @description Character - Swipe Debug.

//Draws the gun the character has equipped.
var gun_sprite = asset_get_index("spr_weapon_"+gun_name+"_hand");
var is_diving = (sprite_index == spr_char_dive);
var xx = x + (image_xscale*7);
var yy = y + 4 +(is_diving*4);
var cursor_dir = point_direction(xx,yy,mouse_x,mouse_y);
var gun_kick = (alarm_get(1)/gun_cooldown);
if (char_hp > -1){
	draw_sprite_ext(gun_sprite,current_time/200,xx-lengthdir_x(gun_kick,cursor_dir),yy-lengthdir_y(gun_kick,cursor_dir),1,image_xscale,cursor_dir,c_white,1);
}

//Controls gun shooting.
if mouse_check_button(mb_left) && (char_hp > -1){
	var gun_distance = 6;
	scr_gun_shoot(gun_bullet,gun_amount,gun_cooldown,gun_spread,cursor_dir,xx+lengthdir_x(gun_distance,cursor_dir),yy-6+lengthdir_y(gun_distance,cursor_dir));
}

//Draws the character.
draw_self();