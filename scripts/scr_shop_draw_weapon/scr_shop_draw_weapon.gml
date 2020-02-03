
///@param gun id
///@param x
///@param y
///@param show upgrades

//Gets the gun statistics.
var gun_id = argument0;
var gun_show_upgrades = argument3;
var gun_map = gun_list[gun_id];
var gun_name = gun_map[? "Name"];
var gun_upgrade = (gun_upgrades[gun_id] > 0);
var gun_amount = gun_map[? "Amount"]+((gun_upgrades[gun_id]-1)*gun_upgrade);
var gun_damage = gun_map[? "Damage"]+((gun_upgrades[gun_id]-1)*gun_upgrade);

//Draws the statistics on the button.
if (gun_show_upgrades == true){
	var touch_pressed = point_in_rectangle(mouse_x,mouse_y,argument1,argument2,argument1+64,argument2+32) && mouse_check_button(mb_left);
	var touch_released = point_in_rectangle(mouse_x,mouse_y,argument1,argument2,argument1+64,argument2+32) && mouse_check_button_released(mb_left);
	draw_sprite(spr_shop_weapon_button,touch_pressed,argument1,argument2);
}else{
	var touch_pressed = (point_in_rectangle(mouse_x,mouse_y,argument1,argument2,argument1+64,argument2+32) && mouse_check_button(mb_left)) || (gun_select == gun_id);
	var touch_released = point_in_rectangle(mouse_x,mouse_y,argument1,argument2,argument1+64,argument2+32) && mouse_check_button_released(mb_left);
	draw_sprite(spr_shop_weapon_button,touch_pressed,argument1,argument2);
}
draw_set_style(font_6px,fa_left,fa_top);
draw_text(argument1+4,argument2+2,gun_name);

//Draws the amount of bullets.
for(var bullet = 0; bullet < 6; bullet++){
	
	var is_stat = !(gun_amount <= bullet);
	var col = make_color_rgb(255*is_stat,255*is_stat,255*is_stat);
	draw_sprite_ext(spr_shop_weapon_icons,0,argument1+8+(bullet*10),argument2+14,1,1,0,col,1-(!is_stat*0.3));
	
	if (gun_show_upgrades){
		var is_upgrade = (gun_amount == bullet) && (gun_upgrades[gun_id] > 0);
		var col = make_color_rgb(255*is_upgrade,255*is_upgrade,0);
		draw_sprite_ext(spr_shop_weapon_icons,0,argument1+8+(bullet*10),argument2+14,1,1,0,col,is_upgrade);
	}
	
}

//Draws the damage amount.
for(var bullet = 0; bullet < 6; bullet++){
	
	var is_stat = !(gun_damage <= bullet);
	var col = make_color_rgb(255*is_stat,255*is_stat,255*is_stat);
	draw_sprite_ext(spr_shop_weapon_icons,1,argument1+8+(bullet*10),argument2+22,1,1,0,col,1-(!is_stat*0.3));
	
	if (gun_show_upgrades){
		var is_upgrade = (gun_damage == bullet) && (gun_upgrades[gun_id] > 0);
		var col = make_color_rgb(255*is_upgrade,255*is_upgrade,0);
		draw_sprite_ext(spr_shop_weapon_icons,1,argument1+8+(bullet*10),argument2+22,1,1,0,col,is_upgrade);
	}
	
}

//Draws the weapon upgrades.
for(var bullet = 0; bullet < 3; bullet++){
	
	var is_stat = !(gun_upgrades[gun_id]-1 < bullet);
	var col = make_color_rgb(255*is_stat,255*is_stat,255*is_stat);
	draw_sprite_ext(spr_shop_weapon_icons,2,argument1+44+(bullet*8),argument2+4,1,1,0,col,1-(!is_stat*0.3));
	
	if (gun_show_upgrades){
		var is_stat = (gun_upgrades[gun_id] == bullet);
		var col = make_color_rgb(255*is_stat,255*is_stat,0);
		draw_sprite_ext(spr_shop_weapon_icons,2,argument1+44+(bullet*8),argument2+4+(-abs(sin(current_time/300)*is_stat)),1,1,0,col,is_stat);
	}
	
}

//Returns if the button has been pressed.
if (touch_released){ return true; }else{ return false; }