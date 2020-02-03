/// @description Shop - Weapon Options.

//Draws the two weapon options.
if (global.shop_gun1 != -1){
	var touch_gun1 = scr_shop_draw_weapon(global.shop_gun1,0,160,true);
	
	draw_sprite(spr_hud_coin,0,24,206);
	draw_set_style(font_6px,fa_left,fa_center);
	var price = (ds_map_find_value(gun_list[global.shop_gun1],"Price")+ds_map_find_value(gun_list[global.shop_gun1],"Price")*gun_upgrades[global.shop_gun1]);
	draw_text(32,202,"$"+string(price));
	
	if (touch_gun1) && (gun_coins >= price){ gun_select = global.shop_gun1; gun_coins -= price; gun_upgrades[global.shop_gun1]++; global.shop_gun1 = -1; chest_bounce = 20; }
}else{
	draw_sprite(spr_shop_weapon_button,1,0,160);
}
if (global.shop_gun2 != -1){
	var touch_gun2 = scr_shop_draw_weapon(global.shop_gun2,(room_width/2)+2,160,true);
	
	draw_sprite(spr_hud_coin,0,(room_width/2)+24,206);
	draw_set_style(font_6px,fa_left,fa_center);
	var price = (ds_map_find_value(gun_list[global.shop_gun2],"Price")+ds_map_find_value(gun_list[global.shop_gun2],"Price")*gun_upgrades[global.shop_gun2]);
	draw_text((room_width/2)+32,202,"$"+string(price));
	
	if (touch_gun2) && (gun_coins >= price){ gun_select = global.shop_gun2; gun_coins -= price; gun_upgrades[global.shop_gun2]++; global.shop_gun2 = -1; chest_bounce = 20; }
}else{
	draw_sprite(spr_shop_weapon_button,1,(room_width/2)+2,160);
}

//Draws the back button.
var touch_pressed = point_in_rectangle(mouse_x,mouse_y,2,6,2+32,6+24) && mouse_check_button(mb_left);
var touch_released = point_in_rectangle(mouse_x,mouse_y,2,6,2+32,6+24) && mouse_check_button_released(mb_left);
draw_sprite(spr_shop_button_back,touch_pressed,2,6);
if (touch_released) && !instance_exists(oFade){ change_room_fade(room_menu); }

//Defines a sine wave to change title angles.
var sin_wave = sin(current_time/600)*5;

//Draws the inventory button.
chest_bounce = approach(chest_bounce,0,0.5);
var touch_pressed = point_in_rectangle(mouse_x,mouse_y,96-24,126-16,96+24,126+16) && mouse_check_button(mb_left);
var col = make_color_rgb(255-(touch_pressed*100),255-(touch_pressed*100),255-(touch_pressed*100));
var touch_released = point_in_rectangle(mouse_x,mouse_y,96-24,126-16,96+24,126+16) && mouse_check_button_released(mb_left);
draw_sprite_ext(spr_shop_inventory_crate,0,96,126-abs(sin(chest_bounce/2)*2),1,1,0,col,1);
draw_sprite_ext(spr_shop_title,0,96,100,1,1,sin_wave,c_white,1);
if (touch_released){ change_room_fade(room_inventory); }

//Draws the gun coins.
draw_sprite(spr_hud_bag,0,23,130);
draw_text(32,133,"$"+string(gun_coins));

//Draws the shop clock.
draw_set_color(c_black);
var clock_x = 31.5;
var clock_y = 59.5;
var hour_dir = -((date_get_hour(date_current_datetime()) / 24) * 360) + 90;
var minute_dir = -((date_get_minute(date_current_datetime()) / 60) * 360) + 90;
var second_dir = -((date_get_second(date_current_datetime()) / 60) * 360) + 90;
draw_line_width(clock_x, clock_y, clock_x + lengthdir_x(4, hour_dir), clock_y + lengthdir_y(4, hour_dir), 1);
draw_line_width(clock_x, clock_y, clock_x + lengthdir_x(10, minute_dir), clock_y + lengthdir_y(10, minute_dir), 1);
draw_line_width(clock_x, clock_y, clock_x + lengthdir_x(12, second_dir), clock_y + lengthdir_y(12, second_dir), 0.5);
draw_set_color(c_white);