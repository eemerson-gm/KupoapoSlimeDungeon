/// @description Inventory - Draw Weapons.

//Draws the back button.
var touch_pressed = point_in_rectangle(mouse_x,mouse_y,2,6,2+32,6+24) && mouse_check_button(mb_left);
var touch_released = point_in_rectangle(mouse_x,mouse_y,2,6,2+32,6+24) && mouse_check_button_released(mb_left);
draw_sprite(spr_shop_button_back,touch_pressed,2,6);
if (touch_released) && !instance_exists(oFade){ change_room_fade(room_shop); }

//Draws the weapons in the character's inventory.
for(var gun = 0; gun < array_length_1d(gun_list); gun++){
	var column = floor(gun/2);
	var xx = 1+(gun*67)-(column*134);
	var yy = 48+column*33;
	if (gun_upgrades[gun] > 0){
		var touch_gun = scr_shop_draw_weapon(gun,xx,yy,false);
		if (touch_gun){ gun_select = gun; }
	}else{
		draw_sprite(spr_shop_weapon_button,0,xx,yy);
	}
}