/// @description Game - Draw Wave / Money

//Draw wave information.
draw_set_style(font_6px,fa_left,fa_top);
draw_text(4,4,"Wave "+string(spawn_wave));

//Draws the health hearts.
for(var heart = 0; heart < 3; heart++){
	draw_sprite(spr_hud_heart,(heart < oCharacter.char_hp),room_width/2 - 24 + (heart*24),room_height - 32);
}

//Draws the fast-forward button.
var touch_pressed = point_in_rectangle(mouse_x,mouse_y,room_width-24,0,room_width,24) && mouse_check_button_released(mb_left);
if (touch_pressed){ fast_forward = !fast_forward; }
draw_sprite(spr_hud_ff,fast_forward,room_width-24,-3);

//Draws the coins the character has.
draw_sprite(spr_hud_coin,0,16,212);
draw_set_style(font_6px,fa_center,fa_center);
draw_text(17,218,string(gun_coins));